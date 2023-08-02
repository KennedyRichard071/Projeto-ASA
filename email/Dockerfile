FROM debian:latest

RUN apt-get update -y

RUN apt install postfix dovecot-imapd dovecot-pop3d telnet syslog-ng -y

RUN apt-get upgrade -y


COPY ./imap/* /etc/dovecot/conf.d

COPY ./smtp/main.cf /etc/postfix/main.cf
COPY ./smtp/master.cf /etc/postfix/master.cf
COPY ./smtp/mailname /etc

COPY start_email.sh .
COPY users.sh /etc/init.d

EXPOSE 25/tcp 
EXPOSE 587/tcp  
EXPOSE 110/tcp
EXPOSE 143/tcp
EXPOSE 993/tcp
EXPOSE 995/tcp

CMD ["sh", "-c", "/etc/init.d/mail.sh ; service syslog-ng start ; service postfix start ; service dovecot start ; tail -F /var/log/mail.log"]
