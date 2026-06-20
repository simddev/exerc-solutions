#!/usr/bin/env bash

input="$1"

if [[ $# -ne 1 ]]
then
    echo "Error: invalid input"
    exit 1
fi

if [[ $input == "total" ]]
then
    echo $(( (2 ** 64) - 1 ))
    exit 0
fi

if [[ $input -lt 1 || $input -gt 64 ]]
then
    echo "Error: invalid input"
    exit 1
fi

echo $(( 2 ** (input - 1) ))
