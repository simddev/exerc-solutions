#!/usr/bin/env bash

score=$(($1 % 256))

((score & 1)) && echo eggs
((score & 2)) && echo peanuts
((score & 4)) && echo shellfish
((score & 8)) && echo strawberries
((score & 16)) && echo tomatoes
((score & 32)) && echo chocolate
((score & 64)) && echo pollen
((score & 128)) && echo cats
