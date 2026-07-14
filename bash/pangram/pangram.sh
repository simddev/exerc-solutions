#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <sentence>"
    exit 1
fi

input="${1,,}"

for c in {a..z}; do
    [[ "$input" != *"$c"* ]] && echo "false" && exit 0
done

echo "true"
