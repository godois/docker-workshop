# docker-workshop
Baby-steps from the Sage Docker workshop

> **Note:**
The fastest way to get this application up and running locally is using **Docker**.  Be sure that you have at least **Docker 1.13.0** installed on your machine.

1. Clone this repository
```shell
$ git clone https://github.com/godois/docker-workshop.git
```
2. Running a Hello-World
```shell
$ docker run hello-world
```

3. Running a Jenkins Container
```shell
$ docker run -p 8080:8080 -p 50000:50000 jenkins
```

3. Running a Jenkins Container - with volume and port bindings
```shell
$ docker run -p 8080:8080 -p 50000:50000 -v /home/marcio/jenkins:/var/jenkins_home jenkins
```

4. Building an image from a Dockerfile
```shell
$ docker build -t godois/show-da-xuxa:1.0 .
```

5. Running show-da-xuxa container
```shell
$ docker run -d -it --name xuxa-container godois/show-da-xuxa:1.0
```

6. Showing logs from inside the container
```shell
$ docker logs xuxa-container
```

7. Getting into the container with a bash window command
```shell
$ docker exec -i -t xuxa-container /bin/bash
```
8. Stopping xuxa-container
```shell
$ docker stop xuxa-container
```

9. Kill all containers running
```shell
$ docker kill $(docker ps -a -q)
```

10. Removing all containers killed
```shell
$ docker rm $(docker ps -a -q)
```