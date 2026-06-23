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

# Handle the special "all" argument
if [[ $# -eq 1 && "$1" == "all" ]]; then
    start=1
    end=12
elif [[ $# -eq 2 ]]; then
    start=$1
    end=$2
else
    echo "invalid" >&2
    exit 1
fi

# Validate range
if (( start < 1 || end < 1 || start > 12 || end > 12 || start > end )); then
    echo "invalid" >&2
    exit 1
fi

print_verse() {
    local verse=$1
    if (( verse == 0 )); then
        # Verse 1 is a special case \u2013 it ends with a period and has no extra lines
        echo "This is the house that Jack built."
    else
        echo "This is the ${subjects[verse]}"
        for ((i = verse; i > 1; i--)); do
            echo "that ${verbs[i - 1]} the ${subjects[i - 1]}"
        done
        echo "that lay in the house that Jack built."
    fi
}

for ((v = start - 1; v < end; v++)); do
    print_verse "$v"
    if ((v < end - 1)); then
        echo
    fi
done
