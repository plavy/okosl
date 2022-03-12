#/bin/bash

DIR=/home/plavy/Android

for FILE in $(find $DIR -regex '.*\.py'); do
  grep -E '^[[:blank:]]*def ' $FILE
done

read

for FILE in $(find $DIR -regex '.*\.[ch]'); do
  grep -E '^#' $FILE
done

read

grep -rnE 'include' $DIR | awk '{print $1}' | grep -oE '^.*:[0-9]+'
