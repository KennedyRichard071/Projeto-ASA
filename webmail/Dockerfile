FROM debian:buster

WORKDIR /app

RUN apt-get update \
    && apt-get install -y \
    apache2 apache2-utils libapache2-mod-php \
    php php-cli php-curl php-xml php-imap wget unzip \
    nano 

RUN apt-get upgrade -y

COPY email_01.sh .
COPY email_02.sh .

RUN wget https://www.rainloop.net/repository/webmail/rainloop-latest.zip
RUN rm /var/www/html/index.html
RUN unzip rainloop-latest.zip -d /var/www/html/


RUN chown -R www-data:www-data /var/www/html/ && \
chmod -R 755 /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

#CMD tail -F /dev/null
