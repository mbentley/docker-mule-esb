docker-mule-esb
===============

Mule ESB Hello World demo for the Indianapolis MuleSoft Meetup March 22, 2018

## Workflow
Demo built from the hello world example found here: https://dzone.com/articles/mule-esb-docker

### build docker image
```
$ docker build -t mbentley/mule-esb .
```

### development mode
```
$ docker run -it --rm --name helloworld -p 8181:8181 -v ${PWD}/apps:/opt/mule/apps mbentley/mule-esb
```

### test connectivity to my hello world app
```
$ watch curl -s http://localhost:8181/
```

### modify the app and watch it redeploy
```
$ vi apps/mule-hello/HelloWorld.xml
```

### re-build docker image
```
$ docker build -t mbentley/mule-esb:new .
```

### run new mule esb image with hello world
```
$ docker run -it --rm --name helloworld -p 8181:8181 mbentley/mule-esb:new
```

### test connectivity to my hello world app
```
$ watch curl -s http://localhost:8181/
```
