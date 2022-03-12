#!/bin/bash

echo $$ > zad2.pid

KAP=0
KOM=0
SUM=0

trap 'let KAP++' SIGBUS
trap 'let KOM++' SIGURG
trap 'let SUM++' SIGSYS
trap 'rm zad2.pid; echo; echo $((KAP+KOM+SUM)); exit 1' SIGINT

while true; do
  echo "KAP @ SIGBUS = ${KAP}"
  echo "KOM @ SIGURG = ${KOM}"
  echo "SUM @ SIGSYS = ${SUM}"
  echo "---------"
  sleep 1
done
