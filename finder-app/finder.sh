#!/bin/bash

if [[ $# -lt 2 ]]
then
echo "Missing arguments!"
exit 1
fi

filesdir=$1
searchstr=$2


if [[ ! -d "$filesdir" ]]
then
echo "Filesdir is not a directory!"
exit 1
fi

files=$(ls "$filesdir" | wc | awk '{print $2}' )

lines=$(cat $filesdir/* 2>/dev/null | grep "$searchstr" | wc | awk '{print $1}' )
echo "The number of files are $files and the number of matching lines are $lines"
exit 0