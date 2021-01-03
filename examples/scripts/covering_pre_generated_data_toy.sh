TOP_DIR=/home/anderson/OptimizationCache
BENCH_DIR=$TOP_DIR/benchmarks
RPT_DIR=$TOP_DIR/examples/reports
FGR_DIR=$TOP_DIR/examples/figures
ALG_DIR=$TOP_DIR/examples/algorithms
CST_DIR=$TOP_DIR/pre_generated_data/covering_set/small_seqs/Angha_small
OUT_DIR=$TOP_DIR/results

GOAL=llvm_instructions
WEIGHT=1.0

export PYTHONPATH=$TOP_DIR
export LD_LIBRARY_PATH=$TOP_DIR/milepost_plugin/lib

# Process the compiler optimization levels
echo "1. PROCESSING THE COMPILER OPTIMIZATION LEVELS"
python3 $ALG_DIR/levels.py \
        --goals $GOAL \
        --weights $WEIGHT \
        --benchmarks_directory $BENCH_DIR \
        --results_directory $OUT_DIR/levels \
        --benchmarks_filename $BENCH_DIR/reports/MiBench_suite_toy.yaml \
	--levels O0,Os,0z

# Evaluate the good sequences
echo "2. EVALUATING THE GOOD SEQUENCES"
for k in 1 5; do
   python3 $ALG_DIR/covering.py \
	--goals $GOAL \
	--weights $WEIGHT \
	--benchmarks_directory $BENCH_DIR \
	--results_directory $OUT_DIR/covering_set \
	--benchmarks_filename $BENCH_DIR/reports/MiBench_suite_toy.yaml \
	--sequences_filename $CST_DIR/best_${k}.yaml \
	--suffix best${k}
done

# Report Levels
echo "3. GENERATING REPORTS FOR LEVELS"
python3 $RPT_DIR/levels_to_csv.py \
	--data_directory $OUT_DIR/levels/MiBench \
        --results_directory $OUT_DIR/levels/reports/MiBench \
        --report_filename $GOAL.csv

# Report strategy
echo "4. GENERATING REPORTS FOR GOOD SEQUENCES"
python3 $RPT_DIR/strategy.py \
	--data_directory $OUT_DIR/covering_set/MiBench \
        --results_directory $OUT_DIR/covering_set/reports \
        --report_filename $GOAL.yaml

# Figures
echo "5. GENERATING FIGURES"
python3 $FGR_DIR/strategies_summary.py \
	--data_report $OUT_DIR/covering_set/reports/$GOAL.csv \
        --levels_report $OUT_DIR/levels/reports/MiBench/$GOAL.csv \
        --y_label "Number of LLVM Instructions" \
        --x_label "Number of Sequences" \
        --output_directory $OUT_DIR/covering_set/figures \
        --figure_filename ${GOAL}_summary.pdf

python3 $FGR_DIR/strategies_dispersion.py \
	--data_report $OUT_DIR/covering_set/reports/$GOAL.csv \
        --levels_report $OUT_DIR/levels/reports/MiBench/$GOAL.csv \
        --y_label "Strategy" \
        --x_label "Number of LLVM Instructions" \
        --output_directory $OUT_DIR/covering_set/figures \
        --figure_filename ${GOAL}_dispersion.pdf

