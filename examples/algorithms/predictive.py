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
from colorit import bold

import distance
import representation
from optcache.essentials import IO
from optcache.essentials import Engine
from optcache.essentials import Sequence
from optcache.essentials import Goals

flags.DEFINE_string('benchmarks_filename',
                    None,
                    'Training benchmarks')
flags.DEFINE_string('training_benchs_filename',
                    None,
                    'Training benchmarks')
flags.DEFINE_string('test_benchs_filename',
                    None,
                    'Test suite')
flags.DEFINE_string('results_directory',
                    None,
                    'Results directory')
flags.DEFINE_boolean('verify_report',
                     True,
                     'Do not process the benchmark if a report exists')
flags.DEFINE_string('benchmarks_directory',
                    None,
                    'Benchmarks directory')
flags.DEFINE_string('training_data_directory',
                    None,
                    'Training data directory')
flags.DEFINE_list('nof_sequences',
                  None,
                  'Number of sequences')
flags.DEFINE_list('goals',
                  None,
                  'Goals')
flags.DEFINE_list('weights',
                  None,
                  'Weights')
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

flags.mark_flag_as_required('training_benchs_filename')
flags.mark_flag_as_required('test_benchs_filename')
flags.mark_flag_as_required('benchmarks_directory')
flags.mark_flag_as_required('results_directory')
flags.mark_flag_as_required('nof_sequences')
flags.mark_flag_as_required('goals')
flags.mark_flag_as_required('weights')
flags.mark_flag_as_required('training_data_directory')


def find_sequences(test_benchmark,
                   training_benchmaks,
                   distance_directory,
                   training_data_directory,
                   nof_sequences):
    """Get N sequences from the most similar benchmark"""

    # Test suite and benchmark
    index = test_benchmark.find('.')
    test_suite_name = test_benchmark[:index]
    test_bench_name = test_benchmark[index+1:]

    # Find the training suites
    training_suites = []
    for training_benchmark in training_benchmaks:
        index = training_benchmark.find('.')
        training_suite_name = training_benchmark[:index]
        if training_suite_name not in training_suites:
            training_suites.append(training_suite_name)

    # Find the closer benchmark
    closer = []
    for training_suite in training_suites:
        d_directory = os.path.join(distance_directory,
                                   test_suite_name,
                                   training_suite)
        filename = '{}/{}.yaml'.format(d_directory, test_bench_name)
        distance_data = IO.load_yaml(filename)
        closer += [(distance, training_suite, training_bench)
                   for training_bench, distance in distance_data.items()]

    closer.sort()
    closer_suite_name = closer[0][1]
    closer_bench_name = closer[0][2]

    # Load closer benchmark data
    d_directory = os.path.join(training_data_directory, closer_suite_name)
    filename = '{}/{}.yaml'.format(d_directory, closer_bench_name)
    training_data = IO.load_yaml_or_fail(filename)

    # Rank sequences
    rank = [(seq_data['goal'], seq_key)
            for seq_key, seq_data in training_data.items()]
    rank.sort()

    # Extract N sequences
    best = {}
    for i, (_, seq_key) in enumerate(rank):
        best[seq_key] = training_data[seq_key].copy()
        if i + 1 == nof_sequences:
            break
    return closer_suite_name, best


def execute(argv):
    """Generate random sequences for each benchmark"""

    FLAGS = flags.FLAGS

    results_directory = FLAGS.results_directory

    # Test benchmarks
    test_benchmarks = IO.load_yaml_or_fail(FLAGS.test_benchs_filename)
    if not test_benchmarks:
        logging.fatal('There are no test benchmarks to process')

    # Training benchmarks
    training_benchmarks = IO.load_yaml_or_fail(FLAGS.training_benchs_filename)
    if not training_benchmarks:
        logging.fatal('There are no training benchmarks to process')

    # Create the results directory
    try:
        os.makedirs(FLAGS.results_directory)
    except FileExistsError:
        pass

    # Extract the representation for test programs
    print(bold('1. EXTRACTING THE REPRESENTATION'))
    FLAGS.results_directory = os.path.join(results_directory, 'representation')
    FLAGS.benchmarks_filename = FLAGS.test_benchs_filename
    representation.execute(argv)

    # Distance: test --> training
    print(bold('2. MEASURING THE DISTANCE'))
    distance_results_directory = os.path.join(results_directory, 'distance')
    FLAGS.results_directory = distance_results_directory
    FLAGS.test_representation_directory = os.path.join(results_directory,
                                                       'representation')
    distance.execute(argv)

    # Process test benchmarks
    print(bold('3. PROCESSING THE BENCHMARKS'))
    for nof_sequences in tqdm(FLAGS.nof_sequences, desc='Processing'):
        for test_benchmark in test_benchmarks:
            index = test_benchmark.find('.')
            suite_name = test_benchmark[:index]
            bench_name = test_benchmark[index+1:]

            # Find the best N sequences
            training_suite, sequences = find_sequences(
                test_benchmark,
                training_benchmarks,
                distance_results_directory,
                FLAGS.training_data_directory,
                int(nof_sequences)
            )

            # Goal_name
            if len(FLAGS.goals) > 1:
                goal_name = '_'.join(FLAGS.goals)
            else:
                goal_name = FLAGS.goals[0]

            # Create the results directory for the suite
            results_dir = os.path.join(results_directory,
                                       'predictive_compilation',
                                       training_suite,
                                       goal_name)
            try:
                os.makedirs(results_dir)
            except FileExistsError:
                pass

            filename = '{}/{}_j{}.yaml'.format(results_dir,
                                               bench_name,
                                               nof_sequences)

            if FLAGS.verify_report and os.path.isfile(filename):
                continue

            results = {}

            for key, data in sequences.items():
                goal_value = Engine.evaluate(
                    Goals.prepare_goals(FLAGS.goals, FLAGS.weights),
                    Sequence.name_pass_to_string(data['seq']),
                    'opt',
                    os.path.join(FLAGS.benchmarks_directory,
                                 suite_name,
                                 bench_name),
                    FLAGS.working_set,
                    FLAGS.times,
                    FLAGS.tool,
                    FLAGS.verify_output
                )
                results[key] = {'seq': data['seq'], 'goal': goal_value}

            IO.dump_yaml(results, filename)


# Execute
if __name__ == '__main__':
    app.run(execute)
