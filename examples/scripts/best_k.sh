TOP_DIR=/home/anderson/OptimizationCache
ALG_DIR=$TOP_DIR/examples/algorithms
BENCH_DIR=$TOP_DIR/benchmarks

export PYTHONPATH=$TOP_DIR

python3 $ALG_DIR/best_k.py \
	--training_directory $TOP_DIR/pre_generated_data/optimization_cache/small_seqs \
	--baseline_directory $TOP_DIR/pre_generated_data/optimization_cache/levels \
	--benchmarks_filename $BENCH_DIR/reports/Angha_small_suite.yaml \
	--results_directory $TOP_DIR/examples/scripts/test_directory/best_k \
	--k 1,5
