#!/usr/bin/env bash

command="$1"
n="$2"

square_of_sum() {
    sum=$((n * (n + 1) / 2))
    echo $((sum ** 2))
}

sum_of_squares() {
    echo $((n * (n + 1) * (2 * n + 1) / 6))
}

difference() {
    sum=$((n * (n + 1) / 2))
    squares=$((n * (n + 1) * (2 * n + 1) / 6))

    echo $((sum ** 2 - squares))
}

"$command"
