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
from absl import logging as lg
from sklearn.metrics.pairwise import euclidean_distances
from sklearn.metrics.pairwise import cosine_distances
from sklearn.metrics.pairwise import manhattan_distances

from optcache.essentials import IO


class Distance:
    """Static class to measuse the distance between feature vectors."""

    __version__ = '1.0.0'

    @staticmethod
    def __populate_data(training_benchmarks,
                        training_directory,
                        test_benchmarks,
                        test_directory):
        """Create test and training data

        Parameters
        ----------
        training_benchmarks : list

        training_directory : str

        tests_benchmark : list

        test_directory : str

        Returns
        -------
        training_data : pandas.DataFrame

        test_data : pandas.DataFrame
        """
        training_data = {}
        for training_benchmark in training_benchmarks:
            index = training_benchmark.find('.')
            suite_name = training_benchmark[:index]
            bench_name = training_benchmark[index+1:]

            benchmark_dir = os.path.join(training_directory,
                                         suite_name)

            data = IO.load_yaml_or_fail('{}/{}.yaml'.format(benchmark_dir,
                                                            bench_name))
            if data:
                training_data[training_benchmark] = data

        if not training_data:
            log.error('Training features do not exist.')
            exit(1)

        test_data = {}
        for test_benchmark in test_benchmarks:
            index = test_benchmark.find('.')
            suite_name = test_benchmark[:index]
            bench_name = test_benchmark[index+1:]

            benchmark_dir = os.path.join(test_directory,
                                         suite_name)

            data = IO.load_yaml_or_fail('{}/{}.yaml'.format(benchmark_dir,
                                                            bench_name))
            if data:
                test_data[test_benchmark] = data

        if not test_data:
            lg.error('Training features do not exist.')
            exit(1)

        training_data = pd.DataFrame.from_dict(training_data, orient='index')
        test_data = pd.DataFrame.from_dict(test_data, orient='index')

        return training_data, test_data

    @staticmethod
    def euclidean_from_data(training_data,
                            test_data):
        """Euclidean distance

        Parameters
        ----------
        training_data : dict

        test_data : dict

        Returns
        -------
        distance : dict
        """
        training_data = pd.DataFrame.from_dict(training_data, orient='index')
        test_data = pd.DataFrame.from_dict(test_data, orient='index')
        return euclidean_distances(test_data, training_data)

    @staticmethod
    def euclidean(training_benchmarks,
                  training_directory,
                  test_benchmarks,
                  test_directory):
        """Euclidean distance

        Parameters
        ----------
        training_benchmarks : list

        training_directory : str

        test_benchmarks : list

        test_directory : list

        Returns
        -------
        distance : dict
        """

        training_data, test_data = Distance.__populate_data(
            training_benchmarks,
            training_directory,
            test_benchmarks,
            test_directory
        )
        return euclidean_distances(test_data, training_data)

    @staticmethod
    def cosine_from_data(training_data,
                         test_data):
        """Cosine distance

        Parameters
        ----------
        training_data : dict

        test_data : dict

        Returns
        -------
        distance : dict
        """
        training_data = pd.DataFrame.from_dict(training_data, orient='index')
        test_data = pd.DataFrame.from_dict(test_data, orient='index')
        return cosine_distances(test_data, training_data)

    @staticmethod
    def cosine(training_benchmarks,
               training_directory,
               test_benchmarks,
               test_directory):
        """Cosine distance

        Parameters
        ----------
        training_benchmarks : list

        training_directory : str

        test_benchmarks : list

        test_directory : str

        Returns
        -------
        distance : dict
        """
        training_data, test_data = Distance.__populate_data(
            training_benchmarks,
            training_directory,
            test_benchmarks,
            test_directory
        )
        return cosine_distances(test_data, training_data)

    @staticmethod
    def manhattan_from_data(training_data,
                            test_data):
        """Manhattan distance

        Parameters
        ----------
        training_data : dict

        test_data : dict

        Returns
        -------
        distance : dict
        """
        training_data = pd.DataFrame.from_dict(training_data, orient='index')
        test_data = pd.DataFrame.from_dict(test_data, orient='index')
        return manhattan_distances(test_data, training_data)

    @staticmethod
    def manhattan(training_benchmarks,
                  training_directory,
                  test_benchmarks,
                  test_directory):
        """Manhattan distance

        Parameters
        ----------
        training_benchmarks : list

        training_directory : str

        test_benchmarks : list

        test_directory : str

        Returns
        -------
        distance : dict
        """
        training_data, test_data = Distance.__populate_data(
            training_benchmarks,
            training_directory,
            test_benchmarks,
            test_directory
        )
        return manhattan_distances(test_data, training_data)
