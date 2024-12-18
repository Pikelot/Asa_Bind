FROM ubuntu:latest

RUN apt update -y

RUN apt-get update

RUN apt upgrade -y

EXPOSE 53/tcp

EXPOSE 53/udp

RUN apt install vim net-tools -y

RUN apt install bind9 dnsutils -y

COPY ./bind/named.conf.local /etc/bind/

COPY ./bind/db.asa.br /etc/bind/

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]