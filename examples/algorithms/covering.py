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

from absl import app, flags

import evaluate_sequences

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
flags.DEFINE_string('sequences_filename',
                    None,
                    'Sequences')

flags.mark_flag_as_required('sequences_filename')
flags.mark_flag_as_required('goals')
flags.mark_flag_as_required('weights')
flags.mark_flag_as_required('benchmarks_filename')
flags.mark_flag_as_required('benchmarks_directory')
flags.mark_flag_as_required('results_directory')


def covering(argv):
    """Evaluate the covering set"""

    FLAGS = flags.FLAGS

    evaluate_sequences.execute(argv)


# Execute
if __name__ == '__main__':
    app.run(covering)
