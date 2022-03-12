#/bin/bash

grep -cE '^[[:blank:]]' /usr/include/stdio.h

grep -cE '__arg' /usr/include/stdio.h
