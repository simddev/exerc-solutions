#!/usr/bin/env bash

input="$1"

if [[ $# -ne 1 ]]; then
    echo "Usage: error_handling.sh <person>"
    exit 1
fi

echo "Hello, "$input""
