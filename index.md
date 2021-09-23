# Ansible
{:.no_toc}
---

[Ansible](https://www.ansible.com/) is a tool that encapsulates workflow ochestration, configuration management, provisioning, and application deployment in a simplistic platform.

This workshop will introduce you to the automation tool [Ansible](https://www.ansible.com/), it will also go through some important Ansible topics and finally assign you some exercise in order for you to play around with the tool.

### Table of contents
{:.no_toc}
---

1. 
{:toc}

## Introduction

## Prerequisites
As the workshop is setup in a Docker environment 

## Installation

## Ansible workshop

What ansible?

### Prerequisites

1. Install Docker
2. Install Docker-compose

### How to run?

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
```
