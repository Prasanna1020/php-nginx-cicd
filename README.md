# Project Documentation

VM installation
-------

Docker install using bash script
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

Git installation
-----

Cloning the Repository provided in the assessment
-----
git clone https://github.com/silarhi/php-hello-world.git

Setting Up Github Repository 
-----
Created repository as "prasanna-intuji-devops-internship-challenge." 

Create new index.php file to display message
-----

Create Dockerfie
----

Builded Docker image locally to test 
-----

Pushed Image to Docker Hub
----

Installed nginx on ubuntu
-----

Create default.conf file for nginx
-----

create docker-compose.yml file by creating two containers one for nginx and another for php-fpm
----




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
