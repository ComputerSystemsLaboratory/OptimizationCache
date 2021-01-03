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

import subprocess


class classproperty(property):
    """classproperty decorator"""
    def __get__(self, cls, owner):
        return classmethod(self.fget).__get__(None, owner)()


class Milepost:
    """Static class to manipulates Milepost static features."""

    __version__ = '1.0.0'

    __features = ['f01_totalBasicBlocks',
                  'f02_oneSuccessor',
                  'f03_twoSuccessor',
                  'f04_greaterTwoSuccessor',
                  'f05_onePredecessor',
                  'f06_twoPredecessor',
                  'f07_greaterTwoPredecessor',
                  'f08_onePredSuc',
                  'f09_onePred_twoSuc',
                  'f10_twoPred_oneSuc',
                  'f11_twoPredSuc',
                  'f12_greaterTwoPredSuc',
                  'f13_instructionLess15',
                  'f14_instructionInterval',
                  'f15_instructionGreater500',
                  'f16_numOfEdges',
                  'f17_numOfCriticalEdges',
                  'f18_abnormalEdge',
                  'f19_directCalls',
                  'f20_condBranch',
                  'f21_assigmentInstructions',
                  'f22_uncondBranch',
                  'f23_numOfIntOperations',
                  'f24_numOfFloatOperations',
                  'f25_numInstructions',
                  'f26_instructionAverage',
                  'f27_averagePhi',
                  'f28_averagePhiArgs',
                  'f29_blockWithoutPhi',
                  'f30_blockPhiIntervalNodes',
                  'f31_blockPhiGreater3Nodes',
                  'f32_blocksPhiGreater5Arg',
                  'f33_blocksPhiIntervalArg',
                  'f34_numOfSwitchInstruction',
                  'f35_numOfUnaryOperations',
                  'f36_ptrArithmetic',
                  'f37_indirectRefs',
                  'f38_addresVar',
                  'f39_addressFunction',
                  'f40_indirectCalls',
                  'f41_leftOpIntConst',
                  'f42_oneOperandConst',
                  'f43_callArgPtrType',
                  'f44_call4args',
                  'f45_ptrRetCallType',
                  'f46_intRetCallType',
                  'f47_constInt0',
                  'f48_constInt32bits',
                  'f49_constInt1',
                  'f50_constInt64bits',
                  'f51_numRefeOfLocalVar',
                  'f52_defUseCounter',
                  'f53_refLocalVariable',
                  'f54_refExterVariable',
                  'f55_localPtrVar',
                  'f56_staticPtrVar']

    @classproperty
    def features(cls):
        """Getter"""
        return cls.__features

    @staticmethod
    def extract(benchmark_directory):
        """Extract the features

        Parameters
        ----------
        benchmark_directory : str

        Returns
        -------
        features : dict
        """
        # We use a clang/LLVM plugin to extract the features.
        cmdline = 'opt -load libMilepostStaticFeatures.so -disable-output \
        -msf {0}/a.out_o.ll'.format(benchmark_directory)

        try:
            ret = subprocess.run(cmdline,
                                 shell=True,
                                 check=True,
                                 capture_output=True)
        except subprocess.CalledProcessError:
            return float('inf')

        output = ret.stderr.decode("utf-8").split('\n')
        features = {}
        for line in output:
            tokens = line.replace(' ', '')
            tokens = tokens.split(':')
            if tokens[0] not in Milepost.__features:
                continue
            name = tokens[0]
            value = float(tokens[1]) if '.' in tokens[1] else int(tokens[1])
            if name in features.keys():
                features[name] += value
            else:
                features[name] = value
        return features

    @staticmethod
    def validate(features):
        """Validate the features vector.

        Argument
        --------
        features : dict
        """
        for feature in features.keys():
            if feature not in Milepost.__features:
                return False
        return True
