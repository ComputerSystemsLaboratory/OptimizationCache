TOP_DIR=/home/anderson/OptimizationCache
TOOLS_DIR=$TOP_DIR/tools
ALG_DIR=$TOP_DIR/examples/algorithms
BENCH_DIR=$TOP_DIR/benchmarks

export PYTHONPATH=$TOP_DIR

python3 $ALG_DIR/distance.py \
	--training_representation_directory $TOP_DIR/pre_generated_data/optimization_cache/representation \
	--training_benchs_filename $BENCH_DIR/reports/Angha_small_suite.yaml \
	--test_representation_directory $TOP_DIR/pre_generated_data/optimization_cache/representation \
	--test_benchs_filename $BENCH_DIR/reports/Angha_original_suite_toy.yaml \
	--results_directory $TOP_DIR/examples/scripts/test_directory/distance
