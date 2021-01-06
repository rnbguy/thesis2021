#!/bin/bash

PRE=$1
AFT=$2

find Sources -iname '*tex' | xargs grep -il "\cite{${PRE}}" | xargs sed -i "s|\\\\cite{${PRE}}|\\\\cite{DBLP:${AFT}}|"