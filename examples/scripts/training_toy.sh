TOP_DIR=/home/anderson/OptimizationCache
ALG_DIR=$TOP_DIR/examples/algorithms
BENCH_DIR=$TOP_DIR/benchmarks
SEQ_DIR=$TOP_DIR/pre_generated_data/optimization_cache/passes_sequences

GOAL=llvm_instructions
WEIGHT=1.0

export PYTHONPATH=$TOP_DIR
export LD_LIBRARY_PATH=$TOP_DIR/milepost_plugin/lib

python3 $ALG_DIR/training.py \
        --passes_filename $SEQ_DIR/llvm-10-Oz-passes.yaml \
        --population 10 \
        --generations 10 \
        --goals $GOAL \
  	--weights $WEIGHT \
        --benchmarks_directory $BENCH_DIR \
        --results_directory $TOP_DIR/training_data \
        --benchmarks_filename $BENCH_DIR/reports/Angha_original_suite_toy.yaml \
        --training_directory $TOP_DIR/training_data \
        --nof_sequences 1 \
        --report_only_the_small \
        --baseline_directory $TOP_DIR/training_data \
        --k 1,5,10


