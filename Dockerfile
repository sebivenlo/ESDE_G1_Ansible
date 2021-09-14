### DO NOT CHANGE SETTINGS ###
FROM centos:8

RUN dnf makecache; \
    dnf install epel-release -y; \
    dnf makecache; \
    dnf install ansible -y; \
    ansible --version