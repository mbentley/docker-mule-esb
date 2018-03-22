docker-mule-esb
===============

Mule ESB Hello World demo for the Indianapolis MuleSoft Meetup March 22, 2018

## Workflow
Demo built from the hello world example found here: https://dzone.com/articles/mule-esb-docker

### build docker image
$ docker build -t mbentley/mule-esb .

### development mode
$ docker run -it --rm --name helloworld -p 8181:8181 -v ${PWD}/dev-apps:/opt/mule/apps mbentley/mule-esb

### zip up app
$ zip mule-hello.zip mule-deploy.properties HelloWorld.xml

### run mule esb with hello world
$ docker run -it --rm --name helloworld -p 8181:8181 mbentley/mule-esb

### test connectivity to my hello world app
$ curl -v http://localhost:8181/
