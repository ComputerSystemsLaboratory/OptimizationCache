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
import sys

from absl import app, flags, logging
from tqdm import tqdm

from optcache.essentials import IO
from optcache.essentials import Goals
from optcache.algorithms import SGA

flags.DEFINE_integer('generations',
                     100,
                     'Number of generations')
flags.DEFINE_integer('seed',
                     None,
                     'The seed')
flags.DEFINE_integer('dimension',
                     100,
                     'Poblem dimension (individual length)')
flags.DEFINE_integer('population',
                     100,
                     'Population size')
flags.DEFINE_integer('param_s',
                     1,
                     'Number of best individuals to use or size of the tournament')
flags.DEFINE_float('param_m',
                   1.0,
                   'Distribution index')
flags.DEFINE_float('cr',
                   0.9,
                   'Crossover probability')
flags.DEFINE_float('m',
                   0.1,
                   'Mutation probability')
flags.DEFINE_enum('mutation',
                  'polynomial',
                  ['polynomial', 'gaussian', 'uniform'],
                  'Mutation')
flags.DEFINE_enum('selection',
                  'tournament',
                  ['tournament', 'truncated'],
                  'Selection')
flags.DEFINE_enum('crossover',
                  'exponential',
                  ['exponential', 'binomial', 'single'],
                  'Cossover')
flags.DEFINE_string('passes_filename',
                    None,
                    'Filename (yaml) that describes the passes to use')
flags.mark_flag_as_required('passes_filename')


def execute(argv):
    """Generate genetic sequences for each benchmark"""

    del argv

    FLAGS = flags.FLAGS

    # The benchmarks
    benchmarks = IO.load_yaml(FLAGS.benchmarks_filename)
    if not benchmarks:
        logging.error('There are no benchmarks to process')
        sys.exit(1)

    # Verify benchmark directory
    if not os.path.isdir(FLAGS.benchmarks_directory):
        logging.error('Benchmarks directory {} does not exist.'.format(
            FLAGS.benchmarks_directory)
        )
        sys.exit(1)

    # Create the results directory
    try:
        os.makedirs(FLAGS.results_directory)
    except FileExistsError:
        pass

    # Initialize a SGA object
    sga = SGA(FLAGS.generations,
              FLAGS.population,
              FLAGS.cr,
              FLAGS.m,
              FLAGS.param_m,
              FLAGS.param_s,
              FLAGS.crossover,
              FLAGS.mutation,
              FLAGS.selection,
              FLAGS.seed,
              FLAGS.dimension,
              FLAGS.passes_filename,
              Goals.prepare_goals(FLAGS.goals, FLAGS.weights),
              'opt',
              FLAGS.benchmarks_directory,
              FLAGS.working_set,
              FLAGS.times,
              FLAGS.tool,
              FLAGS.verify_output)

    # Process each benchmark
    for benchmark in tqdm(benchmarks, desc='Processing'):
        index = benchmark.find('.')
        bench_dir = benchmark[:index]
        bench_name = benchmark[index+1:]

        bench_dir = os.path.join(FLAGS.results_directory,
                                 bench_dir)

        # Create the results directory for the suite
        try:
            os.makedirs(bench_dir)
        except FileExistsError:
            pass

        filename = '{}/{}.yaml'.format(bench_dir, bench_name)
        if FLAGS.verify_report and os.path.isfile(filename):
            continue

        sga.run(benchmark)

        if sga.results:
            IO.dump_yaml(sga.results,
                         filename,
                         FLAGS.report_only_the_best)


# Execute
if __name__ == '__main__':
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
    flags.DEFINE_boolean('report_only_the_best',
                         False,
                         'Store only the best result')

    flags.mark_flag_as_required('goals')
    flags.mark_flag_as_required('weights')
    flags.mark_flag_as_required('benchmarks_filename')
    flags.mark_flag_as_required('benchmarks_directory')
    flags.mark_flag_as_required('results_directory')

    app.run(execute)
