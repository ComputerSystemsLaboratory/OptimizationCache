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
from optcache.essentials import Engine
from optcache.essentials import Sequence

flags.DEFINE_string('suffix',
                    '',
                    'Filename suffix')


def split_sequence(sequence):
    """Generate small sequences

    Argument
    --------
    sequence : dict

    Return
    ------
    sequences : dict
    """
    passes = []
    for _, data in sequence.items():
        passes = data['seq']

    sequences = {}
    for i in range(1, len(passes)+1):
        sequences[i-1] = {'seq': passes[:i]}
    return sequences


def execute(argv):
    """Evaluate N sequences"""

    del argv

    FLAGS = flags.FLAGS

    # The benchmarks
    benchmarks = IO.load_yaml_or_fail(FLAGS.benchmarks_filename)
    if not benchmarks:
        logging.error('There are no benchmarks to process')
        sys.exit(1)

    # Create the results directory
    try:
        os.makedirs(FLAGS.results_directory)
    except FileExistsError:
        pass

    # Process each benchmark
    for benchmark in tqdm(benchmarks, desc='Processing'):
        # The benchmark
        index = benchmark.find('.')
        suite = benchmark[:index]
        bench_name = benchmark[index+1:]

        # Create the results directory for the suite
        results_dir = os.path.join(FLAGS.results_directory,
                                   suite)

        try:
            os.makedirs(results_dir)
        except FileExistsError:
            pass

        # Verify report
        if FLAGS.suffix:
            output_filename = '{}/{}_{}.yaml'.format(
                results_dir,
                bench_name,
                FLAGS.suffix
            )
        else:
            output_filename = '{}/{}.yaml'.format(results_dir, bench_name)

        if FLAGS.verify_report and os.path.isfile(output_filename):
            continue

        # Benchmark directory
        bench_dir = os.path.join(FLAGS.benchmarks_directory,
                                 suite,
                                 bench_name)

        if not os.path.isdir(bench_dir):
            logging.error('Benchmark {} does not exist.'.format(benchmark))
            sys.exit(1)

        # The training data
        training_dir = os.path.join(FLAGS.training_directory,
                                    suite)
        filename = '{}/{}.yaml'.format(training_dir, bench_name)

        sequences = IO.load_yaml_or_fail(filename)
        if not sequences:
            logging.error('There are no sequences to process')
            sys.exit(1)

        best_sequence = Sequence.get_the_best(sequences)

        # Verify if the best sequence is better than the baseline
        baseline_dir = os.path.join(FLAGS.baseline_directory,
                                    suite)
        filename = '{}/{}.yaml'.format(baseline_dir, bench_name)
        baseline_data = IO.load_yaml_or_fail(filename)
        if not baseline_data:
            logging.error('There are no baseline data')
            sys.exit(1)

        baseline_goal = baseline_data[FLAGS.compiler][FLAGS.baseline]['goal']
        for _, data in best_sequence.items():
            best_sequence_goal = data['goal']

        if not (best_sequence_goal < baseline_goal):
            continue

        sequences = split_sequence(best_sequence)

        # Process the sequences
        results = {}
        for key, data in sequences.items():
            goal_value = Engine.evaluate(
                Goals.prepare_goals(FLAGS.goals, FLAGS.weights),
                Sequence.name_pass_to_string(data['seq']),
                'opt',
                bench_dir,
                FLAGS.working_set,
                FLAGS.times,
                FLAGS.tool,
                FLAGS.verify_output
            )
            results[key] = {'seq': data['seq'], 'goal': goal_value}

        # Store the results
        IO.dump_yaml(results, output_filename)


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
    flags.DEFINE_string('baseline_directory',
                        None,
                        'Compiler optimization levels directory')
    flags.DEFINE_string('training_directory',
                        None,
                        'Training directory')
    flags.DEFINE_enum('baseline',
                      'Oz',
                      ['O0', 'O1', 'O2', 'O3', 'Os', 'Oz'],
                      'Baseline')
    flags.DEFINE_enum('compiler',
                      'clang',
                      ['clang', 'opt'],
                      'Compiler')

    flags.mark_flag_as_required('goals')
    flags.mark_flag_as_required('weights')
    flags.mark_flag_as_required('benchmarks_filename')
    flags.mark_flag_as_required('benchmarks_directory')
    flags.mark_flag_as_required('results_directory')
    flags.mark_flag_as_required('baseline_directory')
    flags.mark_flag_as_required('training_directory')

    app.run(execute)
