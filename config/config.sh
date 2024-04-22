#!/bin/sh
ifup eth0
echo -e "nameserver 192.168.1.1\nnameserver 1.1.1.1" > /etc/resolv.conf
sed -i -E 's/(local kernel_opts)=.*/\1="console=ttyS0"/' /sbin/setup-disk
setup-alpine -f answerfile

