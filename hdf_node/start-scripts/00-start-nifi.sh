#!/bin/bash

chkconfig sshd on 
chkconfig ntpd on

/etc/init.d/sshd start
/etc/init.d/ntpd start

echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag
echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled

# Replace /etc/hosts file
umount /etc/hosts
echo "" >> /root/conf/hosts
echo "127.0.0.1   localhost" >> /root/conf/hosts
cp /root/conf/hosts /etc/

$NIFI_HOME/bin/nifi.sh start