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
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

from absl import app, flags, logging
from optcache.essentials import IO

flags.DEFINE_string('data_report',
                    None,
                    'The CSV report that provides the results')
flags.DEFINE_string('levels_report',
                    None,
                    'The CSV report that provides the levels results')
flags.DEFINE_list('baselines',
                  ['clang_Os', 'clang_Oz', 'opt_Os', 'opt_Oz'],
                  'The CSV report that provides the levels results')
flags.DEFINE_string('output_directory',
                    '',
                    'Output directory')
flags.DEFINE_string('y_label',
                    None,
                    'Y axis label')
flags.DEFINE_string('x_label',
                    None,
                    'X axis label')
flags.DEFINE_string('figure_filename',
                    'figure.pdf',
                    'Figure filename')
flags.DEFINE_boolean('disable_labels',
                     False,
                     'Do not plot axes labels')
flags.DEFINE_boolean('improvement',
                     False,
                     'Show improvement instead of absolute value')

flags.mark_flag_as_required('data_report')
flags.mark_flag_as_required('levels_report')
flags.mark_flag_as_required('y_label')
flags.mark_flag_as_required('x_label')


def validate_baselines(baselines):
    """Verify the baselines"""
    valid = ['clang_O0', 'clang_O1', 'clang_O2',
             'clang_O3', 'clang_Os', 'clang_Oz',
             'opt_O0', 'opt_O1', 'opt_O2',
             'opt_O3', 'opt_Os', 'opt_Oz']

    for baseline in baselines:
        if baseline not in valid:
            logging.fatal('Baseline does not exist.')


def sort_strategies(strategies):
    """Discover the number of sequences"""
    nof_sequences = []
    stg_names = []
    for strategy in strategies:
        nof = ''
        nof = [nof + str(strategy[i])
               for i in range(len(strategy)) if strategy[i].isnumeric()]
        nof = int(''.join(nof))
        if nof not in nof_sequences:
            nof_sequences.append(nof)

        stg = ''
        stg = [stg + str(strategy[i])
               for i in range(len(strategy)) if strategy[i].isalpha()]
        stg = ''.join(stg)
        if stg not in stg_names:
            stg_names.append(stg)

    nof_sequences.sort()
    stg_names.sort()

    sort_stg_names = ['{}{}'.format(stg, nof)
                      for stg in stg_names for nof in nof_sequences]
    return nof_sequences, sort_stg_names, stg_names


def execute(argv):
    """Generate the figure"""

    del argv

    FLAGS = flags.FLAGS

    validate_baselines(FLAGS.baselines)

    # Read the reports
    if not os.path.isfile(FLAGS.data_report):
        logging.fatal('CSV report {} does not exist.'.format(
            FLAGS.data_report)
        )

    if not os.path.isfile(FLAGS.levels_report):
        logging.fatal('CSV report {} does not exist.'.format(
            FLAGS.levels_report)
        )

    goal_data = pd.read_csv(FLAGS.data_report)
    goal_data.index = goal_data.bench
    goal_data = goal_data.drop(columns='bench')

    _, strategies, _ = sort_strategies(goal_data.columns)

    level_data = pd.read_csv(FLAGS.levels_report)
    level_data.index = level_data.bench
    level_data = level_data.drop(columns='bench')

    statistics = {}
    dispersion = {'value': [], 'strategy': []}
    for baseline in FLAGS.baselines:
        statistics[baseline] = {}
        for strategy in strategies:
            if FLAGS.improvement:
                values = [goal_data.loc[index][strategy] / level_data.loc[index][baseline]
                          for index in goal_data.index]
            else:
                values = [level_data.loc[index][baseline] - goal_data.loc[index][strategy]
                          for index in goal_data.index]
            strg = ['{}_{}'.format(baseline, strategy)
                    for i in range(len(values))]
            dispersion['value'] += values.copy()
            dispersion['strategy'] += strg.copy()
            statistics[baseline][strategy] = values.copy()

    # The data to plot
    dispersion = pd.DataFrame.from_dict(dispersion)

    # PLOT
    _, ax = plt.subplots()

    # plt.ylim(-1500, 1500)
    plt.ylabel(FLAGS.y_label, fontsize=10, fontweight='bold')
    plt.xlabel(FLAGS.x_label, fontsize=10, fontweight='bold')
    plt.tight_layout()

    y_labels = ['{}_{}'.format(baseline, strategy)
                for baseline, _ in statistics.items()
                for strategy in strategies]

    ax = sns.violinplot(ax=ax,
                        x="value",
                        y="strategy",
                        order=y_labels,
                        data=dispersion)

    if FLAGS.disable_labels:
        ax.set_xticklabels([])
        ax.set_yticklabels([])
        ax.set(xlabel='', ylabel='')
    else:
        ax.set_yticklabels(y_labels, fontsize=8)
        ax.set(xlabel=FLAGS.x_label, ylabel=FLAGS.y_label)

    filename = '{}/{}'.format(
        FLAGS.output_directory,
        FLAGS.figure_filename
    ) if FLAGS.output_directory else FLAGS.figure_filename

    # Create the results directory
    if FLAGS.output_directory:
        try:
            os.makedirs(FLAGS.output_directory)
        except FileExistsError:
            pass

    plt.savefig(filename)
    plt.show()
    # Statistics
    stats = {}
    for b_name, b_data in statistics.items():
        stats[b_name] = {}
        for s_name, s_data in b_data.items():
            stats[b_name][s_name] = {
                'min': float(np.min(s_data)),
                'max': float(np.max(s_data)),
                'mean': float(np.mean(s_data)),
                'median': float(np.median(s_data)),
                '1quantile': float(np.quantile(s_data, 0.25)),
                '2quantile': float(np.quantile(s_data, 0.50)),
                '3quantile': float(np.quantile(s_data, 0.75))
            }

    index = FLAGS.figure_filename.rfind('.')
    sname = FLAGS.figure_filename[:index]

    filename = '{}/{}.yaml'.format(
        FLAGS.output_directory,
        sname,
    ) if FLAGS.output_directory else sname

    IO.dump_yaml(stats, filename)


# Execute
if __name__ == '__main__':
    app.run(execute)
