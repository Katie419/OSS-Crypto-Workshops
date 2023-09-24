FROM ubuntu:latest

RUN mkdir -p /var/run/sshd

RUN apt update && apt install -y openssh-server

RUN useradd -rm -d /home/darth -s /bin/bash darth && \ 
    echo bob:Wi11uGo0utWithM3? | chpasswd

RUN mkdir /home/bob/.ssh && \ 
    chmod 700 /home/bob/.ssh 

COPY id_rsa.pub /home/bob/.ssh/authorized-keys

RUN chown bob:bob -R /home/bob/.ssh && \
    chmod 600 /home/bob/.ssh/authorized-keys

COPY hey.txt /home/darth

CMD ["/usr/sbin/sshd", "-D"]
