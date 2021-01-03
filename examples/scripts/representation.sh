TOP_DIR=/home/anderson/OptimizationCache
ALG_DIR=$TOP_DIR/examples/algorithms
BENCH_DIR=$TOP_DIR/benchmarks

export PYTHONPATH=$TOP_DIR
export LD_LIBRARY_PATH=$TOP_DIR/milepost_plugin/lib

python3 $ALG_DIR/representation.py \
	--benchmarks_directory $BENCH_DIR \
	--results_directory $TOP_DIR/examples/scripts/test_directory/representation \
	--benchmarks_filename $BENCH_DIR/reports/Angha_original_suite_toy.yaml
