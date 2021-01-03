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
from optcache.essentials import Distance

flags.DEFINE_string('training_representation_directory',
                    None,
                    'Training representation directory')
flags.DEFINE_string('test_representation_directory',
                    None,
                    'Test representation directory')
flags.DEFINE_enum('distance',
                  'euclidean',
                  ['euclidean', 'manhattan', 'cosine'],
                  "Distance")
flags.mark_flag_as_required('training_representation_directory')


def execute(argv):
    """Find the euclidean distance from test to training data."""

    del argv

    FLAGS = flags.FLAGS

    # The training benchmarks
    training_benchmarks = IO.load_yaml_or_fail(FLAGS.training_benchs_filename)
    if not training_benchmarks:
        logging.error('There are no training benchmarks to process')
        sys.exit(1)

    # The training benchmarks
    test_benchmarks = IO.load_yaml_or_fail(FLAGS.test_benchs_filename)
    if not test_benchmarks:
        logging.error('There are no test benchmarks to process')
        sys.exit(1)

    # Verify directories
    if not os.path.isdir(FLAGS.training_representation_directory):
        logging.error('Training directory {} does not exist.'.format(
            FLAGS.training_representation_directory))
        sys.exit(1)

    if not os.path.isdir(FLAGS.test_representation_directory):
        logging.error('Test directory {} does not exist.'.format(
            FLAGS.test_representation_directory))
        sys.exit(1)

    # Measure the distance
    if FLAGS.distance == 'euclidean':
        distance = Distance.euclidean(training_benchmarks,
                                      FLAGS.training_representation_directory,
                                      test_benchmarks,
                                      FLAGS.test_representation_directory)
    if FLAGS.distance == 'manhattan':
        distance = Distance.manhattan(training_benchmarks,
                                      FLAGS.training_representation_directory,
                                      test_benchmarks,
                                      FLAGS.test_representation_directory)

    if FLAGS.distance == 'cosine':
        distance = Distance.cosine(training_benchmarks,
                                   FLAGS.training_representation_directory,
                                   test_benchmarks,
                                   FLAGS.test_representation_directory)

    # Store the distance
    for i, test_bench in enumerate(tqdm(test_benchmarks, desc='Processing')):
        index = test_bench.find('.')
        test_suite_name = test_bench[:index]
        test_bench_name = test_bench[index+1:]

        results = {}
        for j, training_bench in enumerate(training_benchmarks):
            index = training_bench.find('.')
            training_suite_name = training_bench[:index]
            training_bench_name = training_bench[index+1:]

            if training_suite_name not in results:
                results[training_suite_name] = {}

            results[training_suite_name][training_bench_name] = float(distance[i][j])

        for training_suite_name, training_distance in results.items():
            results_dir = os.path.join(FLAGS.results_directory,
                                       test_suite_name,
                                       training_suite_name)

            # Create the results directory
            try:
                os.makedirs(results_dir)
            except FileExistsError:
                pass

            filename = '{}/{}.yaml'.format(results_dir, test_bench_name)
            IO.dump_yaml(training_distance, filename)


# Execute
if __name__ == '__main__':
    flags.DEFINE_string('training_benchs_filename',
                        None,
                        'Training benchmarks')
    flags.DEFINE_string('test_benchs_filename',
                        None,
                        'Test benchmark')
    flags.DEFINE_string('results_directory',
                        None,
                        'Results directory')

    flags.mark_flag_as_required('training_benchs_filename')
    flags.mark_flag_as_required('test_benchs_filename')
    flags.mark_flag_as_required('results_directory')
    flags.mark_flag_as_required('test_representation_directory')

    app.run(execute)
