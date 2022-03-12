#/bin/bash

DIR=/tmp/OKOSL

if [[ -d ${DIR} ]]; then
  rm -r ${DIR} || true
fi

bash setup.sh

cd ${DIR}

bash sort.sh

cd -
