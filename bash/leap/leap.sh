#!/usr/bin/env bash

set -euo pipefail

# 1. Check argument count
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <year>"
    exit 1
fi

year="$1"

# 2. Check that it's a positive integer (no sign, no decimals, only digits)
if ! [[ $year =~ ^[0-9]+$ ]]; then
    echo "Usage: $0 <year>"
    exit 1
fi

# 3. Leap year logic (using arithmetic context)
if (( year % 400 == 0 )) || (( year % 4 == 0 && year % 100 != 0 )); then
    echo "true"
else
    echo "false"
fi

# 4. Always exit 0 for valid input
exit 0
