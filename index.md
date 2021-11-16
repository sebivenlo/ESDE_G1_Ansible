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

### General architecture
As we will be using docker to setup the complete architecture a small architectural image is shown below:

[General Architecture](documentation/images/Architecture.svg)

What can be seen in this abstract architecture image is that a single "Docker compose" file is used to instantiate all services that are neccessary for the assignments. It makes sure that 4 containers are running for you to test on. Furthermore, there is an additional container called "ansible" that holds the Ansible environment. This will be the machine you will be working on mainly. Don't worry! it's all an automatic process.

### File layout
The following file structure is used to get you a general idea of which folders and files are located in which folders.

[File layout](documentation/images/File_layout.svg)

There are some important files that need mentioning while making the assignments.

#### docker-compose.yml
We have created a docker compose file that allows you to simply work on the Ansible assignments on your current host machine, without worrying about the more technical matters. In this Docker-compose file we defined a set of services that are started within containers after executing the "docker-compose up" command. Each service defined within the docker-compose file uses a Dockerfile in order to initialize the containers on which they are ran.

#### playbook.yml
Crucial to Ansible is its playbook file. This is the location where you will be making your assignments. The file contains comments with todo's that are self-explanatory.

#### hosts
Another crucial part of Ansible is the hosts (inventory) file. In this inventory file, we defined hosts on which the ansible-playbook tasks will be executed on. You do not have to fiddle around with these, we will take care of the configuration.

#### ./roles/* directory
The directory and "main.yml" located in the "roles" directory are the ones you should be working on.

## Assignment workflow
In order to get you going on the workshop itself, you can start by taking a look at the image below. This image displays what the workflow of the assignment should be. It features the commands you should run in order to make the assignments (succesfully).

[assignment workflow](documentation/images/Assignment_workflow.svg)

#### Clone repository
Only once, you clone the repository using the command:
```
git clone https://github.com/sebivenlo/ESDE_G1_Ansible.git
```

#### Start docker service containers
Only once, you start the docker services using the command:
```
docker-compose up --build -d
```

#### Access ansible environment 
Only once, you access the ansible docker container by using the command:
```
docker-compose run ansible
```

#### Change directory
Only once, you change directory by using the command:
```
cd ansible/configuration
```

#### Write assignments
Every single time you are working on an assignment in a file called "main.yml", which are located in the /roles/ directory. Start off by looking at the main file called "playbook.yml", this is your starting point. From here you will be directed to the assignments. Each assignment has a goal, task and a link to the documentation. (The answers are not hard to find in the documentation)

#### Execute ansible-playbook command
Every single time you are ready to test your assigment you run the command:
```
ansible-playbook playbook.yml --extra-vars "ansible_sudo_pass=workshop"
```
If you want to shorten the duration of the execution, you can also run the command:
```
ansible-playbook playbook.yml --extra-vars "ansible_sudo_pass=workshop" --tags="<tag_name>"
```
where the tags flag is the assignment you are currently working on (either verification, printer, webserver or database)

#### Validate output
Once you have completed your assigment you should check the expected output with your own output.
