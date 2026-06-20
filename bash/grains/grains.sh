#!/usr/bin/env bash

input="$1"

if [[ $# -gt 1 ]]
then
    echo "Error: More than one argument"
    exit -1
fi

if [[ $1 -gt 64 ]]
then
    echo "Error: Greater than 64"
    exit -1
fi

if [[ $1 -lt 1 ]]
then
    echo "Error: Less than 1"
    exit -1
fi

echo (( 2 ** $input ))

