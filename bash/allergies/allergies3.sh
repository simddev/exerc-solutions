#!/usr/bin/env bash

input="$1"

input=$((input % 256))

if [[ $input -ge 128 ]]
then
    echo "cats"
    input=$((input - 128))
fi

if [[ $input -ge 64 ]]
then
    echo "pollen"
    input=$((input - 64))
fi

if [[ $input -ge 32 ]]
then
    echo "chocolate"
    input=$((input - 32))
fi

if [[ $input -ge 16 ]]
then
    echo "tomatoes"
    input=$((input - 16))
fi

if [[ $input -ge 8 ]]
then
    echo "strawberries"
    input=$((input - 8))
fi

if [[ $input -ge 4 ]]
then
    echo "shellfish"
    input=$((input - 4))
fi

if [[ $input -ge 2 ]]
then
    echo "peanuts"
    input=$((input - 2))
fi

if [[ $input -ge 1 ]]
then
    echo "eggs"
fi
