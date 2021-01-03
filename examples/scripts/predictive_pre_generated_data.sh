TOP_DIR=/home/anderson/OptimizationCache
ALG_DIR=$TOP_DIR/examples/algorithms
RPT_DIR=$TOP_DIR/examples/reports
FGR_DIR=$TOP_DIR/examples/figures
BENCH_DIR=$TOP_DIR/benchmarks
OUT_DIR=$TOP_DIR/results

GOAL=llvm_instructions
WEIGHT=1.0

export PYTHONPATH=$TOP_DIR
export LD_LIBRARY_PATH=$TOP_DIR/milepost_plugin/lib

# Process the compiler optimization levels
python3 $ALG_DIR/levels.py \
        --goals $GOAL \
        --weights $WEIGHT \
        --benchmarks_directory $BENCH_DIR \
        --results_directory $OUT_DIR/levels \
        --benchmarks_filename $BENCH_DIR/reports/MiBench_suite.yaml \
	--levels O0,Os,Oz

# Predicitve compilation
for bench in original small; do
   python3 $ALG_DIR/predictive.py \
        --goals $GOAL \
  	--weights $WEIGHT \
        --benchmarks_directory $BENCH_DIR \
        --results_directory $OUT_DIR \
        --training_benchs_filename $BENCH_DIR/reports/Angha_${bench}_suite.yaml \
	--test_benchs_filename $BENCH_DIR/reports/MiBench_suite.yaml \
        --nof_sequences 1,5,10,15,20,22 \
	--training_representation_directory $TOP_DIR/pre_generated_data/optimization_cache/representation \
	--training_data_directory $TOP_DIR/pre_generated_data/optimization_cache/small_seqs
done

# Report Levels
python3 $RPT_DIR/levels_to_csv.py \
        --data_directory $OUT_DIR/levels/MiBench \
        --results_directory $OUT_DIR/levels_reports/MiBench \
        --report_filename $GOAL.csv

# Report strategy
for bench in original small; do
   python3 $RPT_DIR/strategy.py \
        --data_directory $OUT_DIR/predictive_compilation/Angha_${bench}/$GOAL \
        --results_directory $OUT_DIR/predictive_compilation/reports/Angha_${bench} \
        --report_filename $GOAL.yaml
done

# Figures
for bench in original small; do
   python3 $FGR_DIR/strategies_summary.py \
        --data_report $OUT_DIR/predictive_compilation/reports/Angha_${bench}/$GOAL.csv \
        --levels_report $OUT_DIR/levels_reports/MiBench/$GOAL.csv \
        --y_label "Number of LLVM Instructions" \
        --x_label "Number of Sequences" \
        --output_directory $OUT_DIR/predictive_compilation/figures/Angha_${bench} \
        --figure_filename ${GOAL}_summary.pdf

   python3 $FGR_DIR/strategies_dispersion.py \
        --data_report $OUT_DIR/predictive_compilation/reports/Angha_${bench}/$GOAL.csv \
        --levels_report $OUT_DIR/levels_reports/MiBench/$GOAL.csv \
        --y_label "Strategy" \
        --x_label "Number of LLVM Instructions" \
        --output_directory $OUT_DIR/predictive_compilation/figures/Angha_${bench} \
        --figure_filename ${GOAL}_dispersion.pdf
done
