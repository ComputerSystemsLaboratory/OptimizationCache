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

from absl import app, flags
from colorit import bold

import sga
import levels
import best_k
import representation
import sequence_reduction
import benchmark_reduction
import create_sequences_file
import evaluate_sequences

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
flags.DEFINE_string('training_directory',
                    None,
                    'Training data directory')
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
flags.DEFINE_string('sequences_filename',
                    'small_sequences.yaml',
                    'Sequences')

flags.mark_flag_as_required('goals')
flags.mark_flag_as_required('weights')
flags.mark_flag_as_required('benchmarks_filename')
flags.mark_flag_as_required('benchmarks_directory')
flags.mark_flag_as_required('results_directory')
flags.mark_flag_as_required('training_directory')


def pipeline(argv):
    """Training"""

    top_results_directory = FLAGS.results_directory
    original_benchmarks_directory = FLAGS.benchmarks_directory
    baseline_directory = FLAGS.baseline_directory

    print(bold('STEP 1. Generating genetic sequences'))
    FLAGS.results_directory = os.path.join(top_results_directory,
                                           'optimization_cache',
                                           'sga')
    sga.execute(argv)

    print(bold('STEP 2. Reducing sequences'))
    FLAGS.results_directory = os.path.join(top_results_directory,
                                           'optimization_cache',
                                           'small_sequences')
    FLAGS.training_directory = os.path.join(FLAGS.training_directory,
                                            'optimization_cache',
                                            'sga')
    sequence_reduction.execute(argv)

    print(bold('STEP 3. Reducing benchmarks'))
    small_benchmarks_directory = os.path.join(top_results_directory,
                                              'optimization_cache',
                                              'small_benchmarks')
    FLAGS.results_directory = small_benchmarks_directory
    benchmark_reduction.execute(argv)

    print(bold('STEP 4. Creating the small sequences file'))
    FLAGS.results_directory = os.path.join(top_results_directory,
                                           'optimization_cache')
    FLAGS.training_directory = os.path.join(top_results_directory,
                                            'optimization_cache',
                                            'small_sequences')
    create_sequences_file.execute(argv)

    print(bold('STEP 5. Evaluating the small sequences'))
    FLAGS.sequences_filename = '{}/optimization_cache/{}'.format(
        top_results_directory,
        FLAGS.sequences_filename
    )
    for benchmarks_dir in [FLAGS.benchmarks_directory, small_benchmarks_directory]:
        directory = 'small' if 'small' in benchmarks_dir else 'original'
        print(bold('\tBenchmarks: {}'.format(directory)))
        FLAGS.benchmarks_directory = benchmarks_dir
        FLAGS.results_directory = os.path.join(top_results_directory,
                                               'optimization_cache',
                                               'training_small_sequences',
                                               directory)
        evaluate_sequences.execute(argv)

    print(bold('STEP 6. Evaluating the levels'))
    for benchmarks_dir in [original_benchmarks_directory, small_benchmarks_directory]:
        directory = 'small' if 'small' in benchmarks_dir else 'original'
        print(bold('\tBenchmarks: {}'.format(directory)))
        FLAGS.benchmarks_directory = benchmarks_dir
        FLAGS.results_directory = os.path.join(top_results_directory,
                                               'optimization_cache',
                                               'levels',
                                               directory)
        levels.execute(argv)

    print(bold('STEP 7. Extracting the representation'))
    FLAGS.baseline = 'O0'
    for benchmarks_dir in [original_benchmarks_directory, small_benchmarks_directory]:
        directory = 'small' if 'small' in benchmarks_dir else 'original'
        print(bold('\tBenchmarks: {}'.format(directory)))
        FLAGS.benchmarks_directory = benchmarks_dir
        FLAGS.results_directory = os.path.join(top_results_directory,
                                               'optimization_cache',
                                               'representation',
                                               directory)
        representation.execute(argv)

    print(bold('STEP 8. Creating the covering sets'))
    for benchmarks_dir in [original_benchmarks_directory, small_benchmarks_directory]:
        directory = 'small' if 'small' in benchmarks_dir else 'original'
        print(bold('\tBenchmarks: {}'.format(directory)))
        FLAGS.benchmarks_directory = benchmarks_dir
        FLAGS.results_directory = os.path.join(top_results_directory,
                                               'covering_set',
                                               directory)
        FLAGS.training_directory = os.path.join(top_results_directory,
                                                'optimization_cache',
                                                'training_small_sequences',
                                                directory)
        FLAGS.baseline_directory = os.path.join(baseline_directory,
                                                'optimization_cache',
                                                'levels',
                                                directory)
        best_k.execute(argv)


# Execute
if __name__ == '__main__':

    FLAGS = flags.FLAGS

    app.run(pipeline)
