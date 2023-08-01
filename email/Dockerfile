FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get upgrade -y

RUN apt-get install postfix dovecot-imapd dovecot-pop3d telnet -y

COPY start_email.sh /etc/init.d
RUN ./start_email.sh
COPY users.sh .

RUN chmod 755 /etc/init.d/start_email.sh

COPY /imap/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY /imap/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY /imap/10-master.conf /etc/dovecot/conf.d/10-master.conf
COPY /imap/dovecot.conf /etc/dovecot/dovecot.conf

COPY main.cf /etc/postfix

EXPOSE 25/tcp 
EXPOSE 587/tcp  
EXPOSE 110/tcp
EXPOSE 143/tcp
EXPOSE 993/tcp
EXPOSE 995/tcp

CMD ["/etc/init.d/start_email.sh"]

#CMD ["/usr/sbin/postfix","start-fg"]