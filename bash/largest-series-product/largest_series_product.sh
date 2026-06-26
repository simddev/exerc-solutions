#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <digits> <span>" >&2
    exit 1
fi

digits="$1"
span="$2"

# 1. Validate span is an integer (allow negative to detect)
if [[ ! "$span" =~ ^-?[0-9]+$ ]]; then
    echo "span must be a number" >&2
    exit 1
fi

# 2. Reject negative span
if ((span < 0)); then
    echo "span must not be negative" >&2
    exit 1
fi

# 3. Reject zero span (not covered by tests, but logical)
if ((span == 0)); then
    echo "span must be positive" >&2
    exit 1
fi

# 4. Check digits contain only digits (allow empty string)
if [[ ! "$digits" =~ ^[0-9]*$ ]]; then
    echo "input must only contain digits" >&2
    exit 1
fi

len=${#digits}

# 5. Check span does not exceed length
if ((span > len)); then
    echo "span must not exceed string length" >&2
    exit 1
fi

# 6. Compute maximum product
max_product=0
for ((i = 0; i <= len - span; i++)); do
    product=1
    for ((j = i; j < i + span; j++)); do
        digit="${digits:j:1}"
        product=$((product * digit))
    done
    if ((product > max_product)); then
        max_product=$product
    fi
done

echo "$max_product"
