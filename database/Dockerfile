FROM mongo:latest

RUN apt update && apt install openssh-server sudo openssh-client        software-properties-common build-essential python-dev curl -y; \
    useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 workshop; \
    echo 'workshop:workshop' | chpasswd; \
    # sudo add-apt-repository ppa:deadsnakes/ppa; \
    # sudo apt install python3.7; \
    # python3.7 --version; \
    service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]    