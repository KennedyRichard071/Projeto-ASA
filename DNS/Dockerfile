FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get install bind9 bind9-utils dnsutils iputils-ping nano -y

RUN apt-get upgrade -y

COPY ./etc/* /etc/bind

EXPOSE 53/tcp 
EXPOSE 53/udp 
EXPOSE 953/tcp 

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
