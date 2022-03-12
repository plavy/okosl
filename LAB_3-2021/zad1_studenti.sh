#/bin/bash

FILE=studenti-lista

# Popis studenata
cat << EOF > ${FILE}
igor
ana
mislav
EOF

if [[ "$1" == "-r" ]]; then

  # Brisanje svega stvorenoga
  delgroup studenti
  rm -rf /home/studenti
  for STUDENT in $(cat ${FILE}); do
    deluser --remove-home ${STUDENT}
  done
  rm ${FILE}
  exit 0

fi

if [[ "$1" == "-i" ]]; then

  # Stvaranje grupe studenti
  addgroup studenti
  mkdir /home/studenti
  mkdir /home/studenti/studenti-shared

  # Stavaranje skeletona
  cp -r /etc/skel /home/studenti
  mkdir /home/studenti/skel/Download
  mkdir /home/studenti/skel/Documents
  ln -s /home/studenti/studenti-shared /home/studenti/skel/Shared

  # Namjestavanje dozvola
  chmod -w /home/studenti
  chmod g+rwx /home/studenti/studenti-shared
  chmod uo-rwx /home/studenti/studenti-shared
  chown :studenti /home/studenti/studenti-shared

fi

# Stvaranje studenata

if [[ $(cat /etc/group | grep ^studenti: | wc -l) == "0" ]]; then
  echo "Nema grupe studenti. Zavrti s opcijom -i"
  exit 1
fi

for STUDENT in $(cat ${FILE}); do
  useradd --shell /bin/bash --create-home --skel /home/studenti/skel ${STUDENT}
  adduser ${STUDENT} studenti
  echo -e "studos\nstudos" | sudo passwd ${STUDENT}
  echo "Stvoren student ${STUDENT}"
done

rm ${FILE}
