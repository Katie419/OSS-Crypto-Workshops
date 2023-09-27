FROM ubuntu:latest

RUN mkdir -p /var/run/sshd

RUN apt update && apt install -y openjdk-8-jdk openssh-server

RUN useradd -rm -d /home/darth -s /bin/bash darth && \ 
    echo darth:evil | chpasswd

RUN mkdir /home/darth/.ssh && \ 
    chmod 700 /home/darth/.ssh 

COPY id_rsa.pub /home/darth/.ssh/authorized_keys

RUN chown darth:darth -R /home/darth/.ssh && \
    chmod 600 /home/darth/.ssh/authorized_keys

COPY hello.txt /home/darth 

RUN mkdir /home/darth/keys && chmod 777 /home/darth/keys 
COPY private.key /home/darth/keys
COPY public.key  /home/darth/keys


RUN mkdir /home/darth/images 
COPY selfie.txt /home/darth/images

RUN mkdir /home/darth/baba
RUN echo "bababababababbababababababbabababbabababababbababa" > /home/darth/baba/baba.txt

RUN mkdir /home/darth/snek && chmod 777 /home/darth/snek
COPY messages.enc /home/darth/snek 

CMD ["/usr/sbin/sshd", "-D"]
