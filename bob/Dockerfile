FROM ubuntu:latest

RUN mkdir -p /var/run/sshd

RUN apt update && apt install -y openssh-server locate

RUN useradd -rm -d /home/bob -s /bin/bash bob && \ 
    echo bob:Wi11uGo0utWithM3? | chpasswd

RUN mkdir /home/bob/.ssh && \ 
    chmod 700 /home/bob/.ssh 

COPY ./build_files/id_rsa.pub /home/bob/.ssh/authorized-keys

RUN chown bob:bob -R /home/bob/.ssh && \
    chmod 600 /home/bob/.ssh/authorized-keys

COPY ./build_files/hey.txt /home/bob

RUN mkdir /home/bob/wonderland
RUN mkdir /home/bob/wonderland/adventures
RUN mkdir /home/bob/beware
RUN mkdir /home/bob/beware/jabberwocky
RUN mkdir /home/bob/cheshire
COPY ./build_files/cat.txt /home/bob/cheshire
RUN mkdir /home/bob/tweedledee
RUN mkdir /home/bob/tweedledee/dum
RUN mkdir /home/bob/tweedledum
RUN mkdir /home/bob/tweedledum/dee
RUN mkdir /home/bob/white
RUN mkdir /home/bob/white/rabbit
RUN mkdir /home/bob/mad
RUN mkdir /home/bob/mad/hatter
RUN mkdir /home/bob/rabbit
RUN mkdir /home/bob/tea
RUN mkdir /home/bob/tea/party
COPY ./build_files/alice_id_rsa /home/bob/tea/party
COPY ./build_files/flag.txt /home/bob/tea/party
RUN mkdir /home/bob/Red
RUN mkdir /home/bob/Red/Queen

CMD ["/usr/sbin/sshd", "-D"] 
