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
import numpy as np

from absl import app, flags
from tqdm import tqdm

from optcache.essentials import IO
from optcache.essentials import Sequence

flags.DEFINE_string('from_directory',
                    None,
                    'Mater data directory')
flags.DEFINE_string('to_directory',
                    None,
                    'Client data directory')
flags.DEFINE_string('results_directory',
                    None,
                    'Results directory')
flags.DEFINE_string('report_filename',
                    'report.yaml',
                    'Results directory')

flags.mark_flag_as_required('from_directory')
flags.mark_flag_as_required('to_directory')
flags.mark_flag_as_required('results_directory')


def execute(argv):
    """Generate the report"""

    del argv

    FLAGS = flags.FLAGS

    from_files = glob.glob('{}/*.yaml'.format(FLAGS.from_directory))

    report = {}
    strategies = []
    statistics = {}
    for from_file in tqdm(from_files, desc='Processing'):
        index = from_file.rfind('_')
        benchmark = from_file[:index]
        benchmark = benchmark.replace('{}/'.format(FLAGS.from_directory), '')
        strategy = from_file[index+1:]
        strategy = strategy.replace('.yaml', '')
        if strategy not in strategies:
            strategies.append(strategy)
            statistics[strategy] = []

        data = IO.load_yaml(from_file)
        the_best = Sequence.get_the_best(data)
        the_best_key = list(the_best.keys()).pop()

        filename = '{}*{}.yaml'.format(benchmark, strategy)
        to_files = glob.glob('{}/{}'.format(FLAGS.to_directory, filename))
        for to_file in to_files:
            benchmark = to_file.replace('{}/'.format(FLAGS.to_directory), '')
            benchmark = benchmark.replace('_{}.yaml'.format(strategy), '')

            if benchmark not in report:
                report[benchmark] = {}

            data = IO.load_yaml(to_file)
            report[benchmark][strategy] = the_best.copy()
            statistics[strategy].append(data[the_best_key]['goal'])

    # Create the results directory
    try:
        os.makedirs(FLAGS.results_directory)
    except FileExistsError:
        pass

    # YAML Report
    filename = '{}/{}'.format(FLAGS.results_directory, FLAGS.report_filename)
    IO.dump_yaml(report, filename)

    # CSV Report
    strategies.sort()
    filename = filename.replace('.yaml', '.csv')

    with open(filename, 'w') as f:
        w = csv.DictWriter(f, ['bench']+strategies)
        w.writeheader()
        line = {}
        for bench_name, data in report.items():
            line['bench'] = bench_name
            for strategy_name, strategy_value in data.items():
                line[strategy_name] = strategy_value
            w.writerow(line)

    # Statistics
    filename = filename.replace('.csv', '.stat')
    stats = {}
    for strategy, values in statistics.items():
        stats[strategy] = {'min': float(np.min(values)),
                           'max': float(np.max(values)),
                           'mean': float(np.mean(values)),
                           'median': float(np.median(values)),
                           '1quantile': float(np.quantile(values, 0.25)),
                           '2quantile': float(np.quantile(values, 0.50)),
                           '3quantile': float(np.quantile(values, 0.75))}

    IO.dump_yaml(stats, filename)


# Execute
if __name__ == '__main__':
    app.run(execute)
