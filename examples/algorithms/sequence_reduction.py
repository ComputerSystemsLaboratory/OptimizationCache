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
import glob

from absl import app, flags, logging
from tqdm import tqdm

from optcache.essentials import IO
from optcache.essentials import Goals
from optcache.essentials import Sequence
from optcache.algorithms import SequenceReduction

flags.DEFINE_integer('nof_sequences',
                     1,
                     'Number of sequences to reduce (from each benchmark)')
flags.DEFINE_boolean('report_only_the_small',
                     False,
                     'Store only the small sequences')


def execute(argv):
    """Create a small sequence"""

    del argv

    FLAGS = flags.FLAGS

    # Verify directories
    if not os.path.isdir(FLAGS.benchmarks_directory):
        logging.error('Benchmarks directory {} does not exist.'.format(
            FLAGS.benchmarks_directory)
        )
        sys.exit(1)

    if not os.path.isdir(FLAGS.training_directory):
        logging.error('Training directory {} does not exist.'.format(
            FLAGS.training_directory)
        )
        sys.exit(1)

    # Create the results directory
    try:
        os.makedirs(FLAGS.results_directory)
    except FileExistsError:
        pass

    # The benchmarks
    if FLAGS.benchmarks_filename:
        benchmarks = IO.load_yaml(FLAGS.benchmarks_filename)
        if not benchmarks:
            logging.exit('There are no benchmarks to process')
            sys.exit(1)
    else:
        benchmarks = glob.glob(
            '{}/*.yaml'.format(FLAGS.training_directory)
        )
        benchmarks = [
            b.replace(
                '{}/'.format(FLAGS.training_directory),
                '').replace(
                    '.yaml',
                    '')
            for b in benchmarks
        ]

    # Initialize a SequenceReduction object
    seqred = SequenceReduction(Goals.prepare_goals(FLAGS.goals, FLAGS.weights),
                               'opt',
                               FLAGS.benchmarks_directory,
                               FLAGS.working_set,
                               FLAGS.times,
                               FLAGS.tool,
                               FLAGS.verify_output)

    # Reduce
    for benchmark in tqdm(benchmarks, desc='Processing'):
        index = benchmark.find('.')
        bench_dir = benchmark[:index]
        bench_name = benchmark[index+1:]

        bench_dir_result = os.path.join(FLAGS.results_directory, bench_dir)
        filename_result = '{}/{}.yaml'.format(bench_dir_result, bench_name)

        # Create the results directory for the suite
        try:
            os.makedirs(bench_dir_result)
        except FileExistsError:
            pass

        if FLAGS.verify_report and os.path.isfile(filename_result):
            continue

        bench_dir_training = os.path.join(
            FLAGS.training_directory,
            bench_dir
        )
        filename_training = '{}/{}.yaml'.format(bench_dir_training, bench_name)

        sequences = IO.load_yaml(filename_training)
        sequences = Sequence.get_the_best(sequences, FLAGS.nof_sequences)

        results = {}
        counter = 0
        for _, data in sequences.items():
            seqred.run(data['seq'], benchmark)

            if not FLAGS.report_only_the_small:
                results[counter] = {'seq': seqred.results[0]['seq'],
                                    'goal': seqred.results[0]['goal']}
                counter += 1

            results[counter] = {'seq': seqred.results[1]['seq'],
                                'goal': seqred.results[1]['goal']}
            counter += 1

        IO.dump_yaml(results,
                     filename_result)


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

    flags.mark_flag_as_required('goals')
    flags.mark_flag_as_required('weights')
    flags.mark_flag_as_required('benchmarks_directory')
    flags.mark_flag_as_required('training_directory')

    app.run(execute)
