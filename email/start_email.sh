#!/bin/bash

cd /etc/postfix
rm main.cf

cd ../dovecot
rm dovecot.conf

cd conf.dovecot
rm 10-auth.conf 10-mail.conf 10-master.conf

#service dovecot start
#/usr/sbin/postfix start-fg
