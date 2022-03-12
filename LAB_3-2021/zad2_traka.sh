#!/bin/bash

while true; do
  sleep 1
  if [[ ! -f zad2.pid ]]; then
    echo "Senzor ne radi"
    exit 1
  fi
  sigval=$((1 + RANDOM %3))
  case ${sigval} in
    1) SIGNAL=SIGBUS;;
    2) SIGNAL=SIGURG;;
    3) SIGNAL=SIGSYS;;
  esac
  kill -${SIGNAL} $(cat zad2.pid)
done
