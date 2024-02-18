#!/bin/bash

OUTPUT_CSV='output.csv'
INTERVAL=${INTERVAL:-1}

function handle_sigint() {
    echo -e "\nhandle_sigint called"
    exit 0
}

trap handle_sigint SIGINT

function echo_free_mem() {
    d=$(date --iso-8601=seconds)
    fm=$(free -h | awk '/^Mem:/{print $4}')
    echo "${d},${fm}"
}

while true; do
    echo_free_mem
    sleep ${INTERVAL}
done
