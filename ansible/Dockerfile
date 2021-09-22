### DO NOT CHANGE SETTINGS ###
FROM centos:8

RUN dnf makecache; \
    dnf install epel-release -y; \
    dnf makecache; \
    dnf install ansible -y; \
    dnf install openssh-clients -y; \
    ansible --version; \
    ansible-galaxy collection install community.mongodb
