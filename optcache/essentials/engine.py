"""
Copyright 2021 Anderson Faustino da Silva

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
"""

import subprocess
from absl import logging as lg

from optcache.essentials import Goals
from optcache.essentials import IO


class Engine:
    """Static class to compile and run benchmarks."""

    __version__ = '1.0.0'

    @staticmethod
    def compilee(benchmark_directory,
                 compiler,
                 sequence,
                 working_set=0,
                 times=1):
        """Compile a benchmark.

        YaCoS use the tool make to compile a benchmark.
        So, the user should provide a Makefile.

        Arguments
        ----------
        benchmark_directory : str

        sequence : str
            The compiler optimizations to enable.

        compiler : str
            The compiler: clang, llvm, icc, gcc

        times: int

        working_set: int
            Some benchmarks define the working set during
            compilation. Examples: PolyBench and NPB.

        Return
        ------
        res : bool
            True if success, otherwise False.
        """

        # Prepare the command
        #
        # Some benchmarks (PolyBench, NPB, ...) define the working_set
        # during compilation. In such cases, compile.sh have
        # to handle this situation.

        cmdline = \
            'curr_dir=$PWD ; \
            cd {0} ; \
            ./compile.sh {1} "{2}" {3} {4}; \
            cd $curr_dir'.format(benchmark_directory,
                                 compiler,
                                 sequence,
                                 working_set,
                                 times)
        # Invoke the compiler
        res = True
        try:
            subprocess.run(cmdline,
                           shell=True,
                           check=True,
                           capture_output=False)
        except subprocess.CalledProcessError:
            res = False
            lg.warning('Compile: {}'.format(benchmark_directory))

        # Return
        return res

    @staticmethod
    def execute(benchmark_directory,
                working_set,
                times,
                tool,
                verify_output,
                warmup_cache,
                runtime):
        """Execute the benchmark.

        Argument
        ---------
        benchmark_directory : str

        working_set : int

        times : int

        tool: int
            The user can use the flag to invoke different
            types of execution: hyperfine, pin, perf, ...

        verify_output: bool
            The goal value is valid if and only if
            the output (execution) is correct.

        warmup_cache: bool

        runtime: int
            The runtime execution (timeout)

        Return
        ------
        value : float
            The number of instructions.
        """
        cmdline = 'curr_dir=$PWD ; cd {0} ; \
        ./execute.sh {1} {2} {3} {4} {5} {6}; cd $curr_dir'.format(
            benchmark_directory,
            working_set,
            times,
            tool,
            1 if verify_output else 0,
            1 if warmup_cache else 0,
            runtime
        )
        try:
            subprocess.run(cmdline,
                           shell=True,
                           check=True,
                           capture_output=False)
        except subprocess.CalledProcessError:
            lg.error('Execute {}'.format(benchmark_directory))
            exit(1)

        if verify_output:
            return IO.load_execution_status(benchmark_directory)
        return True

    @staticmethod
    def cleanup(benchmark_directory,
                compiler):
        """Clean up a directory.

        YaCoS use the tool make to compile a benchmark.
        So, this function invokes Makefile cleanup.

        Arguments
        ----------
        benchmark_directory : str

        compiler : str
            The compiler: clang, llvm, icc, gcc

        """
        cmdline = 'curr_dir=$PWD ; cd {0} ; \
        make -f Makefile.{1} cleanup; \
        rm -f compile_time.yaml binary_size.yaml ; \
        cd $curr_dir'.format(benchmark_directory,
                             compiler)

        # Invoke the compiler
        try:
            subprocess.run(cmdline,
                           shell=True,
                           check=True,
                           capture_output=False)
        except subprocess.CalledProcessError:
            lg.warning('Cleanup: {}'.format(benchmark_directory))

    @staticmethod
    def evaluate(goals,
                 sequence,
                 compiler,
                 benchmark_directory,
                 working_set=0,
                 times=1,
                 tool='perf',
                 verify_output=False,
                 warmup_cache=False,
                 runtime=0):
        """This method compiles the benchmark and
           returns the value of the goal.

        Arguments
        ----------
        goals : dict
            {goal: weight}

        sequence : str
            The sequence to compile the benchmark.

        compiler : str
            The compiler to use.

        benchmark_directory : str

        working_set : int
            The dataset that the benchmark will execute.

        times : int
            Execution times

        tool : str
            Execution tool

        verify_output : bool
            Verify the status of the execution

        warmup_cache: bool

        runtime: int
            The runtime execution (timeout)

        Return
        ------
        goal : float
            The value of the goal.
        """
        # Compile the benchmark N times if compile_time is the goal.
        times_ = times if times > 2 else 3

        Engine.compilee(benchmark_directory,
                        compiler,
                        sequence,
                        working_set,
                        times_ if Goals.has_compile_time(goals) else 1)

        if verify_output and Goals.only_compile_time_goal(goals):
            out_ok = Engine.execute(benchmark_directory,
                                    working_set,
                                    1,
                                    tool,
                                    verify_output,
                                    warmup_cache,
                                    runtime)
        elif Goals.has_dynamic_goal(goals):
            out_ok = Engine.execute(benchmark_directory,
                                    working_set,
                                    times_,
                                    tool,
                                    verify_output,
                                    warmup_cache,
                                    runtime)

        if verify_output and not out_ok:
            Engine.cleanup(benchmark_directory,
                           compiler)
            return float('inf')

        goal_value = 0.0
        for goal, weight in goals.items():
            # Extract the value of the goal.
            if goal == 'llvm_instructions':
                goal_value += Goals.llvm_instructions(benchmark_directory) * weight
            elif goal == 'binary_size':
                goal_value += Goals.binary_size(benchmark_directory) * weight
            elif goal == 'compile_time':
                goal_value += Goals.compile_time(benchmark_directory) * weight
            elif goal == 'runtime':
                goal_value += Goals.runtime(benchmark_directory, tool) * weight
            elif goal == 'cycles':
                goal_value += Goals.cycles(benchmark_directory) * weight
            elif goal == 'instructions':
                goal_value += Goals.instructions(benchmark_directory) * weight

        Engine.cleanup(benchmark_directory,
                       compiler)

        return goal_value
