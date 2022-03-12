#!/bin/bash

mkdir LAB1
cd LAB1

mkdir source
touch source/empty

cp -r /boot/* /etc/* source 2>/dev/null

du --si -s source

ln -s source target

cd target
pwd
cd ..

cd -P target
pwd
cd ..

du --si -Lsx target 2>/dev/null

touch -m --date "$(stat -c %y source/empty)" source/novi

rm -rf *
cd ..
rmdir LAB1
