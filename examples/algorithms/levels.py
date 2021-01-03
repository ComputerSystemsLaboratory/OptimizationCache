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

from absl import app, flags, logging
from tqdm import tqdm

from optcache.essentials import IO
from optcache.essentials import Goals
from optcache.essentials import Engine

flags.DEFINE_list('levels',
                  ['O0', 'O1', 'O2', 'O3', 'Os', 'Oz'],
                  'Compiler optimization levels')


def execute(argv):
    """Generate random sequences for each benchmark"""

    del argv

    FLAGS = flags.FLAGS

    # The benchmarks
    benchmarks = IO.load_yaml(FLAGS.benchmarks_filename)
    if not benchmarks:
        logging.fatal('There are no benchmarks to process')

    # Create the results directory
    try:
        os.makedirs(FLAGS.results_directory)
    except FileExistsError:
        pass

    # Process each benchmark
    for benchmark in tqdm(benchmarks, desc='Processing'):
        index = benchmark.find('.')
        bench_dir = benchmark[:index]
        bench_name = benchmark[index+1:]

        bench_in_dir = os.path.join(FLAGS.benchmarks_directory,
                                    bench_dir,
                                    bench_name)

        if not os.path.isdir(bench_in_dir):
            continue

        bench_out_dir = os.path.join(FLAGS.results_directory,
                                     bench_dir)

        # Create the results directory for the suite
        try:
            os.makedirs(bench_out_dir)
        except FileExistsError:
            pass

        filename = '{}/{}.yaml'.format(bench_out_dir, bench_name)
        if FLAGS.verify_report and os.path.isfile(filename):
            continue

        results = {}
        for compiler in ['opt', 'llvm']:
            for level in FLAGS.levels:
                goal_value = Engine.evaluate(
                    Goals.prepare_goals(FLAGS.goals, FLAGS.weights),
                    '-{}'.format(level),
                    compiler,
                    bench_in_dir,
                    FLAGS.working_set,
                    FLAGS.times,
                    FLAGS.tool,
                    FLAGS.verify_output
                )
                compiler_name = 'clang' if compiler == 'llvm' else 'opt'
                if compiler_name not in results:
                    results[compiler_name] = {}
                results[compiler_name][level] = {'goal': goal_value,
                                                 'seq': ['-{}'.format(level)]}

        IO.dump_yaml(results, filename)


# Execute
if __name__ == '__main__':
    # app
    flags.DEFINE_string('benchmarks_filename',
                        None,
                        'Benchmarks')
    flags.DEFINE_string('results_directory',
                        None,
                        'Results directory')
    flags.DEFINE_boolean('verify_report',
                         True,
                         'Do not process the benchmark if a report exists')
    flags.DEFINE_list('goals',
                      None,
                      'Goals')
    flags.DEFINE_list('weights',
                      None,
                      'Weights')
    flags.DEFINE_string('benchmarks_directory',
                        None,
                        'Benchmarks directory')
    flags.DEFINE_integer('working_set',
                         0,
                         'Working set',
                         lower_bound=0)
    flags.DEFINE_integer('times',
                         3,
                         'Execution/compile times',
                         lower_bound=3)
    flags.DEFINE_enum('tool',
                      'perf',
                      ['perf', 'hyperfine'],
                      'Execution tool')
    flags.DEFINE_boolean('verify_output',
                         False,
                         'The value of the goal is only valid if the ouput is correct')
    flags.mark_flag_as_required('goals')
    flags.mark_flag_as_required('weights')
    flags.mark_flag_as_required('benchmarks_filename')
    flags.mark_flag_as_required('benchmarks_directory')
    flags.mark_flag_as_required('results_directory')

    app.run(execute)
