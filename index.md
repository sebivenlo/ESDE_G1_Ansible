# Ansible
---


[Ansible](https://www.ansible.com/) is a tool that encapsulates workflow ochestration, configuration management, provisioning, and application deployment in a simplistic platform.

### Table of contents

1. 
{:toc}

## Introduction

## Prerequisites

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
