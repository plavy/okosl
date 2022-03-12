#!/bin/bash

echo "Hello $$"

if [[ $1 == "-r" ]]; then
  rm chat
fi

echo "$$" >> chat

send(){
  for pid in $(cat chat); do
    if [[ ${pid} != $$ && -L /proc/${pid}/fd/0 ]]; then
      echo "$$ says: ${1}" > /proc/${pid}/fd/0
    fi
  done
}

while true; do
  read LINE
  if [[ "${LINE}" != "" ]]; then
    send "${LINE}"
  fi
done
