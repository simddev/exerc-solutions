#!/usr/bin/env bash

set -euo pipefail

[[ $# -eq 1 ]] || echo "Usage: #0 <year>"; exit 1

input="$1"

if [[ $1 % 4 == 0 ]] && [[ $1 % 100 != 0 ]] && [[ $1 % 400 == 0 ]]; then
    echo "true"; exit 0

else
    echo "false"; exit 1
fi

