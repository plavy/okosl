#/bin/bash

for FILE in $(ls -a | grep -E '^PNG-([0-9]{2})([0-9]{2})([0-9]{4})$'); do 
  mv $FILE $(echo "$FILE" | sed -r 's/^PNG-([0-9]{2})([0-9]{2})([0-9]{4})$/\1_\2_\3.png/')
done
