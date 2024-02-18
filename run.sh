#!/bin/bash

OUTPUT_CSV='output.csv'
INTERVAL=${INTERVAL:-1}

function handle_sigint() {
    echo -e "\nhandle_sigint called"
    exit 0
}

trap handle_sigint SIGINT

while true; do
    date
    sleep ${INTERVAL}
done
