#!/bin/sh
touch /etc/modprobe.d/CIS.conf
cat >> /etc/modprobe.d/CIS.conf <<EOS
install cramfs /bin/true
install freevxfs /bin/true
install jffs2 /bin/true
install hfs /bin/true
install hfsplus /bin/true
install squashfs /bin/true
install udf /bin/true
EOS
