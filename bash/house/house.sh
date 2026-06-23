#!/usr/bin/env bash

subjects=(
"house that Jack built"
"malt"
"rat"
"cat"
"dog"
"cow with the crumpled horn"
"maiden all forlorn"
"man all tattered and torn"
"priest all shaven and shorn"
"rooster that crowed in the morn"
"farmer sowing his corn"
"horse and the hound and the horn"
)

verbs=(
"lay in"
"ate"
"killed"
"worried"
"tossed"
"milked"
"kissed"
"married"
"woke"
"kept"
"belonged to"
)

for (( verse=0; verse<${#subjects[@]}; verse++ ))
do
    echo "This is the ${subjects[verse]}"

    for (( i=verse; i>0; i-- ))
    do
        echo "that ${verbs[i-1]} the ${subjects[i-1]}"
    done

    echo

done


