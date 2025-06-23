#!/bin/bash

if [[ $# -lt 2 ]]
then
echo "Usage: ./writer.sh <writefile> <writestr>";
exit 1;
fi

writefile=$1
writestr=$2

dir=$( dirname $writefile )
mkdir -p $dir
echo $writestr > $writefile