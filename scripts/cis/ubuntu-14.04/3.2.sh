if ! stat -L -c "%a" /boot/grub/grub.cfg | egrep ".00"; then
  chmod og-rwx /boot/grub/grub.cfg
fi
