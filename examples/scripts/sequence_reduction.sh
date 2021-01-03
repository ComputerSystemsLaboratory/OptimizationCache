TOP_DIR=/home/anderson/OptimizationCache
ALG_DIR=$TOP_DIR/examples/algorithms
BENCH_DIR=$TOP_DIR/benchmarks

GOAL=llvm_instructions
WEIGHT=1.0

export PYTHONPATH=$TOP_DIR
export LD_LIBRARY_PATH=$TOP_DIR/milepost_plugin/lib

python3 $ALG_DIR/sequence_reduction.py \
	--goals $GOAL \
	--weights $WEIGHT \
	--benchmarks_directory $BENCH_DIR \
	--training_directory $TOP_DIR/examples/scripts/test_directory/sga \
	--nof_sequences 1 \
	--results_directory $TOP_DIR/examples/scripts/test_directory/sga_small_sequences \
	--benchmarks_filename $BENCH_DIR/reports/Angha_original_suite_toy.yaml \
	--report_only_the_small

