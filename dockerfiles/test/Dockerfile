### DO NOT CHANGE SETTINGS ###
FROM ubuntu:latest

RUN apt update && apt install openssh-server sudo openssh-client -y; \
    useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 workshop; \
    echo 'workshop:workshop' | chpasswd; \
    usermod -aG sudo workshop; \
    echo 'Test' >> /home/ubuntu/hello.txt;\
    service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

