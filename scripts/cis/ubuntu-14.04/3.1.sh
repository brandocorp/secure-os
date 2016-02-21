#!/bin/sh
if ! stat -c "%u %g" /boot/grub/grub.cfg | egrep "^0 0"; then
  chown root:root /boot/grub/grub.cfg
fi
