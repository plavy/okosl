#!/usr/bin/bash

#!#!#!#!#!#!#
# 1. Ispisite trenutni radni direktorij. (0.5)

pwd

#!#!#!#!#!#!#
# 2. Ispisite sadrzaj .bash_history datoteke u vasem maticnom direktoriju.
# (0.5)

cat ~/.bash_history

#!#!#!#!#!#!#
# 3. Ispisite sadrzaj home direktorija trenutnog korisnika sortirano po
# velicini uzlazno. (1.0)

ls -Sr ~

#!#!#!#!#!#!#
# 4. Bez mijenjanja radnog direktorija, unutar direktorija /tmp napravite
# direktorij "OKOSL tjedan" koji ce sadrzavati direktorije ponedjeljak, utorak,
# srijeda, cetvrtak, petak i subota, gdje ce subota biti skriveni direktorij.
# (1.0)

mkdir "/tmp/OKOSL tjedan" "/tmp/OKOSL tjedan/ponedjeljak" "/tmp/OKOSL tjedan/utorak" "/tmp/OKOSL tjedan/srijeda" "/tmp/OKOSL tjedan/cetvrtak" "/tmp/OKOSL tjedan/petak" "/tmp/OKOSL tjedan/.subota"

#!#!#!#!#!#!#
# 5. Bez mijenjanja radnog direktorija, u skrivenom direktoriju iz proslog
# zadatka subota napravite prazne datoteke predavanja, labosi, zadaca1, zadaca2
# ... zadaca8. (1.0)

mkdir "/tmp/OKOSL tjedan/.subota/predavanja" "/tmp/OKOSL tjedan/.subota/labosi" "/tmp/OKOSL tjedan/.subota/zadaca"{1..8}

#!#!#!#!#!#!#
# 6. Kopirajte direktorij subota u direktorij ponedjeljak. (0.5)

cp -r "/tmp/OKOSL tjedan/.subota" "/tmp/OKOSL tjedan/ponedjeljak"

#!#!#!#!#!#!#
# 7. Ispisite cijeli sadrzaj direktorija "/tmp/OKOSL tjedan" rekurzivno kako
# biste dokazali da su uistinu svi direktoriji i datoteke napravljeni kako smo
# i htjeli. (0.5)

ls -Ra "/tmp/OKOSL tjedan"

#!#!#!#!#!#!#
# 8. U svom maticnom direktoriju stvorite simbolicku poveznicu Varionica na
# direktorij /var. (0.75)

ln -s /var ~/Varionica

#!#!#!#!#!#!#
# 9. Ispisite sadrzaj /var direktorija koristeci poveznicu stvorenu u proslom
# zadatku. (0.5)

ls ~/Varionica

#!#!#!#!#!#!#
# 10. Izbrisite simbolicku poveznicu Varionica (0.5)

rm ~/Varionica

#!#!#!#!#!#!#
# 11. Odredite Koliko vam je preostalo slobodne memorije na disku montiranom na
# / direktorij. Pobrinite se da je ispis u ljudski citljivom formatu. (0.75)

df -h /

#!#!#!#!#!#!#
# 12. Odredite kojeg su tipa datoteke /bin/bash, /etc/passwd i /boot, tim
# redoslijedom (0.5)

file /bin/bash /etc/passwd /boot

#!#!#!#!#!#!#

