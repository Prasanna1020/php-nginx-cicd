# Final Output
https://drive.google.com/file/d/1kfAzX7SJAvQSMgmGVE-0dIu7qSNMF8aX/view?usp=sharing

# Screenshots
Please go to screenshots folder in the code.

# Project Documentation

1.VM installation
-------

2.Docker install using bash script
-----
#!/bin/bash
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -

sudo add-apt-repository \
    "deb https://apt.dockerproject.org/repo/ \
    ubuntu-$(lsb_release -cs) \
    main"

sudo apt-get update
sudo apt-get -y install docker-engine docker-compose

#add current user to docker group so there is no need to use sudo when running docker
sudo usermod -aG docker $(whoami)

3.Git installation
-----

4.Cloning the Repository provided in the assessment
-----
git clone https://github.com/silarhi/php-hello-world.git

5.Setting Up Github Repository 
-----
Created repository as "prasanna-intuji-devops-internship-challenge." 

6.Create new index.php file to display message
-----

7.Create Dockerfie
----

8.Build Docker image locally to test 
-----

9.Push Image to Docker Hub
----

10.Install nginx on ubuntu
-----

11.Create default.conf file for nginx
-----

12.Create docker-compose.yml file by creating two containers one for nginx and another for php-fpm
----

13.Running Docker Compose up locally to test whether image is pulled or not and to ensure ngnix web server is working correctly.
----

14.Install Jenkins on Ubuntu
----

15.Access Jenkins by enabling port 8080
-----

16.Configure Jenkins by installing plugins like docker.
-----

17.Create new freestyle project in jenkins and added github url and enabled GitHub hook trigger for GITScm polling.
-----

18.Configure Jenkins Build Steps by writting Execute shell commands.
------
#Setting up credentials
DOCKER_HUB_USERNAME=prasanna751
DOCKER_HUB_PASSWORD=dckr_pat_lKLxwXVW_JBh8SatnnpE_09tVEo
IMAGE_NAME=prasanna751/php-image

#Tag contains current date and git commit hash
TAG=$(date +"%Y-%m-%d")_$(git rev-parse --short HEAD)

#Log in to Docker Hub
docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD

#Build the Docker image
docker build -t $IMAGE_NAME:$TAG .

#Push the Docker image to Docker Hub
docker push $IMAGE_NAME:$TAG

#Remove the Docker image
docker rmi $IMAGE_NAME:$TAG

#Running docker compose
echo 'y' | docker-compose up -d

19.Configure Github Webhook and the issue i faced is that github webhooks doesnot take localhost and ip address of local machine so i used ngrok.
-----

20.Install ngrok.
-----

21.Generate a new public ip using ngrok for jenkins port 8080.
------
ngrok http 8080

22.Use that same ip for jenkins configuration and github webhooks which finally let the triggers works.
-----

23.Now after pushing to the main branch all things works correctly and CI/CD was achieved.
-----

# php-hello-world
A simple hello-world for composer

 [![Latest Stable Version](https://github.com/silarhi/php-hello-world/workflows/Tests/badge.svg)](https://github.com/silarhi/php-hello-world/workflows/Tests/badge.svg)
 [![Latest Stable Version](https://poser.pugx.org/silarhi/hello-world/v/stable)](https://packagist.org/packages/silarhi/hello-world)
[![Total Downloads](https://poser.pugx.org/silarhi/hello-world/downloads)](https://packagist.org/packages/silarhi/hello-world)
[![License](https://poser.pugx.org/silarhi/hello-world/license)](https://packagist.org/packages/silarhi/hello-world)


[![SymfonyInsight](https://insight.symfony.com/projects/5d582202-1186-4ce7-82c7-c4d3a2c11807/big.svg)](https://insight.symfony.com/projects/5d582202-1186-4ce7-82c7-c4d3a2c11807)

Installation
------------

Install with composer
``` bash
composer require silarhi/hello-world
```

Run composer update
``` bash
composer update silarhi/hello-world
```

Usage
-----

``` php
require_once __DIR__ . '/vendor/autoload.php';

use Silarhi\Hello;

$hello = new Hello();
echo $hello->display() . "\n";
```
