#!/usr/bin/env bash

input="$1"

if [[ $# -ne 1 ]]; then
    echo "Error: invalid input"
    exit 1
fi

if [[ $input == "total" ]]; then
    sum=0
    value=1

    for (( i=1; i<=64; i++ )); do
        sum=$((sum + value))
        value=$((value * 2))
    done

    # IMPORTANT: force unsigned interpretation
    printf "%u\n" "$sum"
    exit 0
fi

if [[ $input -lt 1 || $input -gt 64 ]]; then
    echo "Error: invalid input"
    exit 1
fi

value=1
for (( i=1; i<input; i++ )); do
    value=$((value * 2))
done

printf "%u\n" "$value"
