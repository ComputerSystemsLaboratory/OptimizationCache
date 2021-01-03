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
import csv
import glob

from absl import app, flags
from tqdm import tqdm

from optcache.essentials import IO
from optcache.essentials import Sequence

flags.DEFINE_string('data_directory',
                    None,
                    'Data directory')
flags.DEFINE_string('results_directory',
                    None,
                    'Results directory')
flags.DEFINE_string('report_filename',
                    'report.yaml',
                    'Results directory')

flags.mark_flag_as_required('data_directory')
flags.mark_flag_as_required('results_directory')


def execute(argv):
    """Generate a CSV from YAML reports"""

    del argv

    FLAGS = flags.FLAGS

    results_files = glob.glob('{}/*.yaml'.format(FLAGS.data_directory))

    report = {}
    strategies = []
    for results in tqdm(results_files, desc='Report'):
        benchmark = results.replace('{}/'.format(FLAGS.data_directory), '')
        benchmark = benchmark.replace('.yaml', '')

        if benchmark not in report:
            report[benchmark] = {}

        data = IO.load_yaml(results)
        for seq_name, seq_data in data.items():
            if seq_name not in strategies:
                strategies.append(seq_name)
            report[benchmark][seq_name] = seq_data['goal']

    # Create the results directory
    try:
        os.makedirs(FLAGS.results_directory)
    except FileExistsError:
        pass

    csv_filename = '{}/{}'.format(FLAGS.results_directory,
                                  FLAGS.report_filename)

    with open(csv_filename, 'w') as f:
        w = csv.DictWriter(f, ['bench']+strategies)
        w.writeheader()
        line = {}
        for bench_name, data in report.items():
            line['bench'] = bench_name
            for seq_name, goal_value in data.items():
                line[seq_name] = goal_value
            w.writerow(line)


# Execute
if __name__ == '__main__':
    app.run(execute)
