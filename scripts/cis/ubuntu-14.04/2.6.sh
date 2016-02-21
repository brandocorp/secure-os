#!/bin/sh
if ! cat /etc/fstab | grep '^/tmp' | grep /var/tmp | grep 'bind'; then
  if [ ! -d /var/tmp ]; then
    mkdir /var/tmp
  fi

cat >> /etc/fstab <<EOS
/tmp /var/tmp none bind 0 0
EOS

fi
