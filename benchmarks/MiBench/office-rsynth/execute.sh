#!/bin/bash

function execute() {
    case $TOOL in
        "perf")
            PERF_TOOL="cycles instructions"
            PERF_TYPE="u"

            events=${PERF_TOOL// /:$PERF_TYPE,}
            events=$events:$PERF_TYPE

            if [[ $WARMUP_CACHE -eq 1 ]]; then
                timeout --signal=TERM ${RUNTIME} ./a.out $RUN_OPTIONS < $STDIN &> /dev/null
                if [[ $? -ne 0 ]]; then
                    echo "Halting warmup cache due to some error" > error.log
                    exit 1
                fi
            fi

            timeout --signal=TERM ${RUNTIME} perf stat -r \
                    $TIMES -o runtime.csv -e $events \
                    bash -c "./a.out $RUN_OPTIONS < $STDIN" &> /dev/null
            if [[ $? -ne 0 ]]; then
                echo "Halting execution (perf) due to some error" > error.log
                exit 1
            fi
            ;;
        "hyperfine")
            hyperfine -w $WARMUP_CACHE -r $TIMES --show-output \
                      --export-csv runtime.csv \
                      -u second "./a.out $RUN_OPTIONS < $STDIN" &> /dev/null
            if [[ $? -ne 0 ]]; then
                echo "Halting execution (hyperfine) due to some error" > error.log
                exit 1
            fi
            ;;
        *)
            echo "Error: this tool is not implemented yet" > error.log
            exit 1
            ;;
    esac
}

function verify_output() {
    # Diff the two files.
    diff reference_output/reference_output_$WORKING_SET.dat output.dat > diff.txt 2>&1
    if [[ $? -eq 0 ]]; then
        # They are igual
        echo "succeed" > verify_output.yaml
    else
        # They are different
        echo "failed" > verify_output.yaml
    fi

}

# Command line parameters
WORKING_SET=$1
TIMES=$2
TOOL=$3
VERIFY_OUTPUT=$4
WARMUP_CACHE=$5
RUNTIME=$6

case $WORKING_SET in
    0)
        RUN_OPTIONS="-a -q -o output.dat"
        STDIN="smallinput.dat"
        ;;
    1)
        RUN_OPTIONS="-a -q -o output.dat"
	STDIN="largeinput.dat"
        ;;
    *)
        echo "Error: dataset"
        exit 1
	;;
esac

execute

if [[ $VERIFY_OUTPUT -eq 1 ]]; then
   verify_output
fi
