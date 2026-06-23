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

[[ $# -eq 2 ]] || exit 1

start=$1
end=$2

if ((start < 1 || end < 1 || start > 12 || end > 12 || start > end)); then
    echo "invalid verse"
    exit 1
fi

print_verse() {
    local verse=$1

    echo "This is the ${subjects[verse]}"

    for ((i = verse; i > 0; i--)); do
        echo "that ${verbs[i - 1]} the ${subjects[i - 1]}."
    done
}

for ((v = start - 1; v < end; v++)); do
    print_verse "$v"

    if ((v < end - 1)); then
        echo
    fi
done
