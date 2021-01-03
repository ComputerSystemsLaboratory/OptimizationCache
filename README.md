# Welcome to Optimization Cache

Predictive compilation is the problem of determining good
sequences of analyses and optimizations for particular programs.
Although predictive compilers have enjoyed much
progress in recent years, their development still faces a difficult
challenge: the vastness of the space of possible optimizations
that can be matched with each program. The effective exploration of this space
is a community task that must be carried out gradually and
systematically. Towards this vision, this repo provides an optimization cache for research on code-size reduction.
In addition, this repo provides a set of building blocks so that the user can build his/her own application.

## Table of Contents

- [Installation](#installation)
- [Benchmarks](#benchmarks)
- [Training Data](#training-data)
- [Building an Optimization Cache](#building-an-optimization-cache)
- [Building Blocks](#building-blocks)
- [Examples](#examples)
- [Directory Layout](#directory-layout)
- [Contact](#contact)

## Installation

OptimizationCache is compatible with Python 3.8, and is tested on Ubuntu 20.04. Other Linux distros should work as well, but Windows is not supported.

To install OptimizationCache, follow these two steps:


```
1. git clone https://github.com/ComputerSystemsLab/OptimizationCache.git
```

```
2. apt install perf hyperfine clang llvm python3-yaml
```

```
3. pip3 install -r requirements.txt
```

```
3. cd <OptimizationCache>/milepost_plugin
   mkdir build
   cd build
   make install
```

## Benchmarks

The benchmarks consists of two suites: [Angha](http://cuda.dcc.ufmg.br/angha/) and [MiBench](http://vhosts.eecs.umich.edu/mibench/).


## Training Data

This repo provides an *Optimization Cache*, as well as a *Covering Set*. The *Optimization Cache* provides training data for predictive compilation. The *Covering set* provides good optimization sequences. They were built using 1.5k Angha benchmarks.

## Building an Optimization Cache

The process to build an *Optimization Cache* (and a *Covering Set*) employs six steps:

1. Explore the optimization space to find, for each training program, optimization sequences that are good for it.
2. Simplify the sequences.
3. Simplify the training programs. 
4. Evaluate the performance of small sequences on each training program.
5. Build the cache with relationships (F, S, P).
   - F - features vector that represents the training program
   - S - good sequences
   - P - performance of each sequence
6. Find K good sequences which cover *almost* all training benchmarks.

## Building Blocks

The building blocks provide search algorithms, as well as, functionalities for manipulating programs and objectives.

1. Search Algorithms
   - [BestK](https://dl.acm.org/doi/10.1145/2400682.2400715)
   - [Pygmo's Genetic algorithm](https://esa.github.io/pygmo2/)
   - [Pygmo's Particle swarm optimization](https://esa.github.io/pygmo2/)
   - Random
   - [Sequence reduction](https://dl.acm.org/doi/10.1145/2400682.2400715)

2. Funcionalities
   - Benchmark reduction (create small benchmark)
   - Benchmark manipulation (compile, execute, extract features, ...)
   - Objective/goal manipulation (single goal, multiple goals, ...)
   - IO manipulation (load, dump, open, ...)
   - Sequence manipulation (create, modification, ...)

## Examples

This repo provides four groups of examples:

1. Algorithms
   - Applications built using the building blocks.
   - Reduce benchmarks:
      - `python3 benchmark_reduction.py <flags>`
   - Find the best k sequences:
      - `python3 best_k.py <flags>`
   - Evaluate k good sequences:
      - `python3 covering.py <flags>`
   - Create a sequences file:
      - `python3 create_sequences_file.py <flags>`
   - Measure the distance between programs:
      - `python3 distance.py <flags>`
   - Evaluate k sequences:
      - `python3 evaluate_sequences.py <flags>`
   - Process the compiler optimization levels:
      - `python3 levels.py <flags>`
   - Perform predictive compilation:
      - `python3 predictive.py <flags>`
   - Generate and evaluate random sequences:
      - `python3 random_.py <flags>`
   - Extract benchmark representation:
      - `python3 representation.py <flags>`
   - Reduce sequences:
      - `python3 sequence_reduction.py <flags>`
   - Generate and evaluate genetic sequences:
      - `python3 sga.py <flags>`
   - Build an optimization cache:
      - `python3 training.py <flags>`
   
2. Figures
   - Applications to plot figures.
   - Plot benchmarks instructions:
      - `python3 benchmarks_summary.py <flags>`
   - Plot the summary from the results:
      - `python3 strategies_summary.py <flags>`
   - Plot thes dispersion from the results:
      - `python3 strategies_dispersion.py <flags>`

3. Reports
   - Applications to create reports.
   - Create a CSV file from levels data:
      - `python3 levels_to_csv.py <flags>`
   - Create a report for an specific objective:
      - `python3 strategy.py <flags>`
   - Create a report for an specific objective when the training use a different objective:
      - `python3 results_from_strategy.py <flags>`
   - Create a summation report for an specific objective:
      - `python3 strategy_summation.py <flags>`
   
4. Scripts
   - Bash scripts to invoke an application.

## Directory Layout

- ``benchmarks/``
   - ``Angha_original/``
      - Angha suite.
   - ``Angha_small/``
      - Angha suite, after reducing each benchmark.
   - ``MiBench/``
      -  MiBench suite.
   - ``reports``/
      - Suites description.
- ``examples/``
   - ``algorithms/``
      - Applications built using the building blocks.
   - ``figures/``
      - Applications to plot figures.
   - ``reports/``
      - Applications to create reports.
   - ``scripts/``
      - Bash scripts to invoke applications.
- ``milepost_plugin/``
  - A plugin to extract the [Milepost Static Features](http://ctuning.org/wiki/index.php/CTools:MilepostGCC:StaticFeatures:MILEPOST_V2.1)
- ``optcache/``
   - ``algorithms/``
      - Algorithms.
   - ``essentials/``
      - Essentials blocks.
- ``pre_generated_data/``
    - ``optimization_cache/``
      - An optimization cache.
    - ``covering_set/``
      - An covering set, or, a set of good sequences.

## Contact

_Anderson Faustino da Silva_ (csl@uem.br)

