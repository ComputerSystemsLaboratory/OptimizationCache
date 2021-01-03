TOP_DIR=/home/anderson/OptimizationCache
ALG_DIR=$TOP_DIR/examples/algorithms
BENCH_DIR=$TOP_DIR/benchmarks

export PYTHONPATH=$TOP_DIR
export LD_LIBRARY_PATH=$TOP_DIR/milepost_plugin/lib

python3 $ALG_DIR/benchmark_reduction.py \
	--benchmarks_directory $BENCH_DIR \
	--results_directory $TOP_DIR/examples/scripts/test_directory/small_benchmarks \
	--training_directory $TOP_DIR/pre_generated_data/optimization_cache/small_seqs \
        --benchmarks_filename $BENCH_DIR/reports/Angha_original_suite_toy.yaml

