#/bin/bash

cat > Top10 << EOF
Linux Mint 19.1
Ubuntu 20.4
Debian GNU/Linux 10.7
Mageia 7.1
Fedora 33
openSUSE Leap 15.2
Arch Linux
CentOS 8
PCLinuxOS
Slackware Linux 14.2
FreeBSD
EOF

less Top10

sed -i'' -r 's/^[^0-9]*$//g' Top10

less Top10

sed -i'' -r 's/^([^0-9]*) ([0-9]*\.*[0-9]+)$/\2 \1/g' Top10

less Top10

sed -i'' -r 's/([A-Z])/\L\1/g' Top10

less Top10

sed -i'' -r 's/([aeiou])/\U\1/g' Top10

cat Top10
