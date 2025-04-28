#!/bin/sh

counter=0
i=0

while [ "$i" -lt 16 ]; do
    u=0
    while [ "$u" -lt 8 ]; do
        printf "\033[%sm%s\t\033[0m" "$counter" "$counter"
        counter=`awk "BEGIN {print $counter + 1}"`
        u=`awk "BEGIN {print $u + 1}"`
    done
    printf "\n"
    i=`awk "BEGIN {print $i + 1}"`
done

printf "\033[5mScript finished.\n\033[0m"