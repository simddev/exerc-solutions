#!/usr/bin/env bash

score=$1
command=$2
item=$3

is_allergic() {
    case "$item" in
    eggs) value=1 ;;
    peanuts) value=2 ;;
    shellfish) value=4 ;;
    strawberries) value=8 ;;
    tomatoes) value=16 ;;
    chocolate) value=32 ;;
    pollen) value=64 ;;
    cats) value=128 ;;
    *) value=0 ;;
    esac

    ((score & value))
}

if [[ "$command" == "allergic_to" ]]; then
    if is_allergic; then
        echo "true"
    else
        echo "false"
    fi
    exit 0
fi

if [[ "$command" == "list" ]]
then
    result=""

    (( score & 1 )) && result+="eggs "
    (( score & 2 )) && result+="peanuts "
    (( score & 4 )) && result+="shellfish "
    (( score & 8 )) && result+="strawberries "
    (( score & 16 )) && result+="tomatoes "
    (( score & 32 )) && result+="chocolate "
    (( score & 64 )) && result+="pollen "
    (( score & 128 )) && result+="cats "

    echo "${result% }"
fi
