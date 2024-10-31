FROM ubuntu:latest

RUN apt update -y

RUN apt install bind9 -y

RUN apt install dnsutils -y

COPY named.conf.local /etc/bind 

COPY db.asa.br /etc/bind

EXPOSE 53/tcp
EXPOSE 53/udp

CMD [ "/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]

