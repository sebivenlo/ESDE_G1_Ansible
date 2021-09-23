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
