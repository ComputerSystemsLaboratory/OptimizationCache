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
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

from absl import app, flags, logging

flags.DEFINE_string('levels_report',
                    None,
                    'The CSV report that provides the results')
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
flags.DEFINE_list('compilers',
                  ['clang', 'opt'],
                  'Compilers')
flags.DEFINE_list('levels',
                  ['O0', 'Os', 'Oz'],
                  'Compiler optimization levels')
flags.mark_flag_as_required('levels_report')
flags.mark_flag_as_required('y_label')
flags.mark_flag_as_required('x_label')


def execute(argv):
    """Generate the figure"""

    del argv

    FLAGS = flags.FLAGS

    # Read the report
    if not os.path.isfile(FLAGS.levels_report):
        logging.fatal('CSV report {} does not exist.'.format(
            FLAGS.levels_report)
        )

    level_data = pd.read_csv(FLAGS.levels_report)
    level_data.index = level_data.bench
    level_data = level_data.drop(columns='bench')

    average = {}
    for bench in level_data.index:
        average[bench] = {}
        for compiler in FLAGS.compilers:
            values = [level_data.loc[bench]['{}_{}'.format(compiler, level)]
                      for level in FLAGS.levels]
            average[bench][compiler] = values.copy()

    # PLOT
    symbols = ['p', 'x', '+', '*', 'v', '^',
               '<', '>', '1', '2', '3', '4',
               's', 'D', 'd', 'h', 'H']

    x = [i for i in range(len(FLAGS.levels))]

    plt.style.use('seaborn-whitegrid')

    _, ax = plt.subplots()

    # plt.ylim(-1500, 1500)
    plt.ylabel(FLAGS.y_label, fontsize=10, fontweight='bold')
    plt.xlabel(FLAGS.x_label, fontsize=10, fontweight='bold')
    plt.xticks(x, labels=FLAGS.levels, fontweight='bold')
    # plt.xticks(fontsize=10, fontweight='bold')
    # plt.yticks(fontsize=10, fontweight='bold')
    plt.tight_layout()

    for i, (_, b_data) in enumerate(average.items()):
        for j, (c_name, c_data) in enumerate(b_data.items()):
            if i == 0 and i + j in [0, 1]:
                ax.plot(x, c_data, symbols[j], color='gray',
                        markersize=10,
                        markerfacecolor='white',
                        markeredgewidth=2, label=c_name)
            else:
                ax.plot(x, c_data, symbols[j], color='gray',
                        markersize=10,
                        markerfacecolor='white',
                        markeredgewidth=2)

    leg = ax.legend(prop={'weight': 'bold', 'size': 12}, ncol=2, loc=1)

    for text in leg.get_texts():
        plt.setp(text, color='gray')

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


# Execute
if __name__ == '__main__':
    app.run(execute)
