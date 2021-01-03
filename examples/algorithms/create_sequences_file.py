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
from optcache.essentials import Sequence


def execute(argv):
    """Create a small sequence"""

    del argv

    FLAGS = flags.FLAGS

    # Create the results directory
    try:
        os.makedirs(FLAGS.results_directory)
    except FileExistsError:
        pass

    # The benchmarks
    benchmarks = IO.load_yaml_or_fail(FLAGS.benchmarks_filename)
    if not benchmarks:
        logging.fatal('There are no benchmarks to process')

    # Create the sequences file
    results = {}
    counter = 0
    for benchmark in tqdm(benchmarks, desc='Processing'):
        index = benchmark.find('.')
        bench_dir = benchmark[:index]
        bench_name = benchmark[index+1:]

        bench_dir = os.path.join(FLAGS.training_directory, bench_dir)

        filename = '{}/{}.yaml'.format(bench_dir, bench_name)

        sequences = IO.load_yaml_or_fail(filename)
        sequences = Sequence.get_the_best(sequences)

        for _, data in sequences.items():
            sequence = data['seq']
            if Sequence.exist(sequence, results):
                continue
            results[counter] = {'seq': sequence}
            counter += 1

    filename = '{}/{}'.format(
        FLAGS.results_directory,
        FLAGS.sequences_filename
    )
    IO.dump_yaml(results,
                 filename)


# Execute
if __name__ == '__main__':
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
    flags.DEFINE_string('sequences_filename',
                        'sequences.yaml',
                        'Sequences filename')

    flags.mark_flag_as_required('training_directory')
    flags.mark_flag_as_required('benchmarks_filename')
    flags.mark_flag_as_required('results_directory')

    app.run(execute)
