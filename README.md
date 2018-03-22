docker-mule-esb
===============

Mule ESB Hello World demo for the Indianapolis MuleSoft Meetup March 22, 2018

## Workflow
Demo built from the hello world example found here: https://dzone.com/articles/mule-esb-docker

### create and copy files to dev space
```
$ mkdir dev-apps/mule-hello
$ cp HelloWorld.xml mule-deploy.properties dev-apps/mule-hello/
```

### build docker image
```
$ docker build -t mbentley/mule-esb .
```

### development mode
```
$ docker run -it --rm --name helloworld -p 8181:8181 -v ${PWD}/dev-apps:/opt/mule/apps mbentley/mule-esb
```

### test connectivity to my hello world app
```
$ watch curl -s http://localhost:8181/
```

### modify the app and watch it redeploy
```
$ vi dev-apps/mule-hello/HelloWorld.xml
```

### copy developed code to repo
```
$ cp dev-apps/mule-hello/* .
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
$ curl -v http://localhost:8181/; echo
```
