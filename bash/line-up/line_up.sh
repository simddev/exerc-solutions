#!/usr/bin/env bash

# Usage: ./ticket.sh <name> <number>
# Example: ./ticket.sh Mary 1

set -euo pipefail

# Input validation
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <name> <number>" >&2
    exit 1
fi

name="$1"
number="$2"

# Check that number is a positive integer between 1 and 999
if ! [[ $number =~ ^[1-9][0-9]{0,2}$ ]]; then
    echo "Error: number must be an integer between 1 and 999." >&2
    exit 1
fi

# Determine the ordinal suffix
# We need the last two digits to catch 11, 12, 13, and the last digit for others.
last_two=$((number % 100))
last_digit=$((number % 10))

if [[ $last_two -ge 11 && $last_two -le 13 ]]; then
    suffix="th"
else
    case $last_digit in
    1) suffix="st" ;;
    2) suffix="nd" ;;
    3) suffix="rd" ;;
    *) suffix="th" ;;
    esac
fi

# Output the sentence
echo "$name, you are the ${number}${suffix} customer we serve today. Thank you!"
