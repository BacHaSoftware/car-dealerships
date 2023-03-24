# INVO Application

[Phalcon][1] is a web framework delivered as a C extension providing high
performance and lower resource consumption.

This is a sample application for the Phalcon PHP Framework. We expect to
implement as many features as possible to showcase the framework and its
potential.

Please write us if you have any feedback.

Thanks.

## NOTE

The master branch will always contain the latest stable version. If you wish
to check older versions or newer ones currently under development, please
switch to the relevant branch.

## Get Started

### Requirements

* PHP >= 7.4
* [Apache][2] Web Server with [mod_rewrite][3] enabled or [Nginx][4] Web Server
* Latest stable [Phalcon Framework release][5] extension enabled
* [MySQL][6] >= 5.7

### Installation

1. Copy project to local environment - `git clone git@github.com:phalcon/invo.git`
2. Copy file `cp .env.example .env`
3. Edit .env file with your DB connection information

If you do not have PHP installed on your machine or do not wish to install it, you 
can run the application in a docker container. You will need [docker][9] and [docker-compose][10].

```shell
docker-compose up -d 
```

will build and start your environment

```shell
docker exec -it invo-8.0 /bin/bash
```

will allow you to enter the environment and run the tests. There is also `invo-8.1` 
as an option, if you wish to run an environment with PHP 8.1.

To see the dockerized invo in action run:

```shell
docker inspect invo-8.0
```
and make a note of the `IPAddress`. Type the address in your browser and you 
will see the invo application in action.


```shell
http://localhost:81/
```
demo/demo@123