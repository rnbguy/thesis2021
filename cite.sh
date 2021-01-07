#!/bin/bash

PRE=$1
AFT=$2

find Sources -iname '*tex' | xargs grep -il "${PRE}" | xargs sed -i "s|${PRE}|DBLP:${AFT}|"

# for e in `find Sources/ -iname '*tex' -exec egrep -o '\\cite[tp]?{[^}]*}' {} \; | cut -d '{' -f 2 | cut -d '}' -f 1 | tr -d ' ' | tr , '\n' | sort | uniq | grep -v DBLP`; do
#     grep -inr $e Sources/*/misc.bib > /dev/null || echo $e
# done