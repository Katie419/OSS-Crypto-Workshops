FROM ubuntu:latest

RUN mkdir -p /var/run/sshd

RUN apt update && apt install -y openjdk-8-jdk openssh-server

RUN useradd -rm -d /home/alice -s /bin/bash alice && \ 
    echo alice:alice | chpasswd

RUN mkdir /home/alice/.ssh && \ 
    chmod 700 /home/alice/.ssh 

COPY id_rsa.pub /home/alice/.ssh/authorized_keys

RUN chown alice:alice -R /home/alice/.ssh && \
    chmod 600 /home/alice/.ssh/authorized_keys 

RUN mkdir /home/alice/message
COPY msg.txt /home/alice/message

COPY welcome.txt /home/alice

CMD ["/usr/sbin/sshd", "-D"]
