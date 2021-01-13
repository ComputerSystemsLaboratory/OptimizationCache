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

import os
import subprocess
from statistics import mean
import pandas as pd

from absl import logging as lg

from optcache.essentials import IO


class Goals:
    """Static class that manipulates goals."""

    __version__ = '1.0.0'

    @staticmethod
    def llvm_instructions(benchmark_directory):
        """Evaluate for number of LLVM instructions.

        Arguments
        ---------
        benchmark_directory : str

        Return
        ------
        value : float
            The number of LLVM instructions.
        """
        # We use a clang/LLVM plugin to extract the number of instructions.
        cmdline = 'opt -load libMilepostStaticFeatures.so -disable-output \
        -msf {0}/a.out_o.ll'.format(benchmark_directory)

        try:
            ret = subprocess.run(cmdline,
                                 shell=True,
                                 check=True,
                                 capture_output=True)
        except subprocess.CalledProcessError:
            return float('inf')

        output = ret.stderr.decode("utf-8").split('\n')        
        insts = [float(item[item.find(':')+2:])
                 for item in output if 'f25_numInstructions' in item]
        return float(sum(insts))

    @staticmethod
    def binary_size(benchmark_directory):
        """Extract the binary size.

        Arguments
        ---------
        benchmark_directory : str

        Return
        ------
        value : float
            The binary size.
        """
        data = IO.load_yaml('{}/binary_size.yaml'.format(benchmark_directory))
        if data:
            return data
        else:
            return float('inf')

    @staticmethod
    def compile_time(benchmark_directory):
        """Load the compile time.

        Arguments
        ---------
        benchmark_directory : str

        Return
        ------
        value : float
            The compile time.
        """
        data = IO.load_yaml('{}/compile_time.yaml'.format(benchmark_directory))
        if data:
            values = [val for val in data]
            comp_time = mean(values)
        else:
            comp_time = float('inf')
        return comp_time

    @staticmethod
    def runtime(benchmark_directory,
                tool):
        """Load the compile time.

        Arguments
        ---------
        benchmark_directory : str

        tool: str
            Execution tool

        Return
        ------
        value : float
            The compile time.
        """
        filename = '{}/runtime.csv'.format(benchmark_directory)
        if not os.path.isfile(filename):
            return float('inf')
        if tool == 'perf':
            lines = IO.read_lines(filename)
            tokens = []
            for line in lines:
                if 'seconds time elapsed' in line:
                    tokens = line.split(' ')
                    break
            tokens = [x for x in tokens if x and x[0].isnumeric()]
            goal_value = tokens[0].replace(',', '')
        elif tool == 'hyperfine':
            data = pd.read_csv(filename)
            goal_value = data['mean'][0]
        return goal_value

    @staticmethod
    def cycles(benchmark_directory):
        """Load the compile time.

        Arguments
        ---------
        benchmark_directory : str

        Return
        ------
        value : float
            The compile time.
        """
        filename = '{}/runtime.csv'.format(benchmark_directory)
        if os.path.isfile(filename):
            lines = IO.read_lines(filename)
            tokens = []
            for line in lines:
                if 'cycles' in line:
                    tokens = line.split(' ')
                    break
            tokens = [x for x in tokens if x and x[0].isnumeric()]
            return tokens[0].replace('.', '')
        return float('inf')

    @staticmethod
    def instructions(benchmark_directory):
        """Load the compile time.

        Arguments
        ---------
        benchmark_directory : str

        Return
        ------
        value : float
            The compile time.
        """
        filename = '{}/runtime.csv'.format(benchmark_directory)
        if os.path.isfile(filename):
            lines = IO.read_lines(filename)
            tokens = []
            for line in lines:
                if 'instructions' in line:
                    tokens = line.split(' ')
                    break
            tokens = [x for x in tokens if x and x[0].isnumeric()]
            return tokens[0].replace('.', '')
        return float('inf')

    @staticmethod
    def prepare_goals(goals,
                      weights):
        """Create a dictionary.

        Arguments
        ----------
        goals : list

        weights : list

        Return
        ------
        goals : dict
            {goal: weight}
        """
        valid_goals = ['llvm_instructions',
                       'binary_size',
                       'compile_time',
                       'runtime',
                       'cycles',
                       'instructions']

        for goal in goals:
            if goal not in valid_goals:
                lg.error('Invalid goal {}'.format(goal))
                exit(1)

        if len(goals) != len(weights):
            lg.error('|goals| != |weights|')
            exit(1)

        goals_ = {}
        value = 0.0
        for i, goal in enumerate(goals):
            weight = float(weights[i])
            goals_[goal] = weight
            value += weight

        if not (value > 0.1 and value <= 1.0):
            lg.error('Goal weight should be 1.0')
            exit(1)

        return goals_

    @staticmethod
    def has_compile_time(goals):
        return 'compile_time' in goals.keys()

    @staticmethod
    def only_compile_time_goal(goals):
        """Verify if the goals do not need to execute the benchmark."""
        inter = set(['cycles', 'instructions', 'runtime']).intersection(goals)
        return not bool(inter)

    @staticmethod
    def has_dynamic_goal(goals):
        """Verify if the YaCoS needs to execute the benchmark."""
        inter = set(['cycles', 'instructions', 'runtime']).intersection(goals)
        return bool(inter)
