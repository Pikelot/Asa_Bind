FROM ubuntu:latest

RUN apt update -y

RUN apt upgrade -y

RUN apt-get update

RUN apt install postfix -y 

COPY main.cf /etc/postfix

#adicionar usuário
RUN useradd -c "Carl Jhonson" -m -s /bin/false CJ

RUN echo "CJ:pwd123" | chpasswd

RUN useradd -c "BIG SMOKE" -m -s /bin/false SMOKE

RUN echo "SMOKE:pwd123" | chpasswd

CMD ["postfix", "start-fg"]