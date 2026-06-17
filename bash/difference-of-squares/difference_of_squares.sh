#!/usr/bin/env bash

n="$1"

sum=0
sum_squares=0

for (( i=1; i<=n; i++ ))
do
    (( sum += i ))
    (( sum_squares += i ** 2 ))
done

square_sum=$(( sum ** 2 ))

echo $(( square_sum - sum_squares ))
