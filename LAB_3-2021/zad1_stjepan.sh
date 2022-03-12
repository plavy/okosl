sudo adduser --no-create-home --shell /bin/bash --disabled-password --gecos "" stjepan

echo -e "stjepko\nstjepko" | sudo passwd stjepan

# sudo visudo
# Cmnd_Alias USER_MANAGEMENT = /usr/sbin/useradd, /usr/sbin/adduser, /usr/sbin/deluser, /usr/sbin/addgroup, /usr/sbin/delgroup, /usr/bin/passwd, /bin/bash
# stjepan ALL=(ALL) NOPASSWD: USER_MANAGEMENT

