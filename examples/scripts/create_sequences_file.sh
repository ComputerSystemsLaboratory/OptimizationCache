TOP_DIR=/home/anderson/OptimizationCache
TOOLS_DIR=$TOP_DIR/tools
ALG_DIR=$TOP_DIR/examples/algorithms

export PYTHONPATH=$TOP_DIR

python3 $ALG_DIR/create_sequences_file.py \
	--training_directory $TOP_DIR/working_space/small_sequences \
	--results_directory $TOP_DIR/working_space \
	--benchmarks_filename $BENCH_DIR/reports/Angha_original_suite_toy.yaml
