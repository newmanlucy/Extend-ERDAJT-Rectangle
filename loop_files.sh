#!/bin/bash

echo $1 $2 $3 hi
for FILE in inputSequences/*.lms
do
  echo python3 extend.py "$@" \"$(basename "$FILE")\"
  python3 extend.py "$@" "$(basename "$FILE")"
  echo $FILE converted
done
