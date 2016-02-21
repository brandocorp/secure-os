#!/bin/sh
if ! cat /etc/fstab | grep '/run/shm' | grep noexec | grep nosuid | grep nodev ; then
cat >> /etc/fstab <<EOS
none     /run/shm     tmpfs     rw,noexec,nosuid,nodev     0     0
EOS
fi
