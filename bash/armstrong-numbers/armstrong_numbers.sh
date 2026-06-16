#!/usr/bin/env bash

input="$1"

length=${#input}

sum=0

for (( i=0; i<length; i++ ))
do
    digit=${input:i:1}

    sum=$((sum + digit ** length))
done

if (( sum == input ))
then
    echo "true"
else
    echo "false"
fi
