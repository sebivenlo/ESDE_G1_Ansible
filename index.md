# Ansible
{:.no_toc}
---

[Ansible](https://www.ansible.com/) is a tool that encapsulates workflow ochestration, configuration management, provisioning, and application deployment in a simplistic platform.

This workshop will introduce you to the automation tool [Ansible](https://www.ansible.com/), it will go through some important Ansible topics and finally assign you some exercise in order for you to play around with the tool.

### Table of contents
{:.no_toc}

1. 
{:toc}

## Prerequisites
As the workshop is setup in a Docker environment it requires you to have the Docker engine and the Docker-compose environment installed. Please, follow the instructions for your OS carefully. 

We do not need to install Ansible on our host machine, as we completely leverage the execution of the Ansible environment to one of our Docker containers.

### Windows

[Docker desktop for Windows](https://docs.docker.com/desktop/windows/install/)

### Mac

[Docker desktop for Mac](https://docs.docker.com/desktop/mac/install/)

### Unix environment
Unlike the Mac and Windows environment, the Unix installer does not automatically come with [Docker-compose](https://docs.docker.com/compose/) installed. Therefore it is very important to not just install the Docker Engine, but also the Docker-compose environment as we will be using Docker-compose throughout the workshop.

1. [Docker Engine](https://docs.docker.com/engine/install/)
2. [Docker Compose](https://docs.docker.com/compose/install/)

## Project architectures

### File layout
The following file structure is used to get you a general idea of which folders and files are located in which folders.

```
ESDE_G1_Ansible
    configuration 
        roles
            common
                tasks
        playbook.yml
    dockerfiles
        ansible
            Dockerfile
        database
            Dockerfile
    ansible.cfg
    docker-compose.yml
    hosts
```

There are some important files that need mentioning while making the assignments.

#### docker-compose.yml
We have created a docker compose file that allows you to simply work on the Ansible assignments on your current host machine, without worrying about the more technical matters. In this Docker-compose file we defined a set of services that are started within containers after executing the "docker-compose up" command. Each service defined within the docker-compose file uses a Dockerfile in order to initialize the containers on which they are ran.

#### playbook.yml
Crucial to Ansible is its playbook file. This is the location where you will be making your assignments. The file contains comments with todo's that are self-explanatory.

#### hosts
Another crucial part of Ansible is the hosts (inventory) file. In this inventory file, we defined hosts on which the ansible-playbook tasks will be executed on. You do not have to fiddle around with these, we will take care of the configuration.

<!-- ### How to run?

#### Initializing the docker compose file with its services

```
(sudo) docker-compose up (--build) (-d)
```
#### Entering the Ansible docker container, where he ansible environment is setup
```
(sudo) docker-compose run ansible
```

### What now?
You have now entered the ansible environment and can execute ansible commands. The standard ansible location with the folders is located on the docker container in the following directory:
```
/ansible/configuration/
``` -->
