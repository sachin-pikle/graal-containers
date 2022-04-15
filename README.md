# graal-containers

## Intro

This repo will walk you through building containerised apps with GraalVM Native Image

We will be using a Spring Boot application as our test-bed. This is a fairly simple app that
genertes nonse verse, in the style of the poem Jabberwocky (by Lewis Carrol). To dthis remarkable
fet it uses a Markov hain to model the text of the original poem and this model is then used to generate random text that appear to be like the original.

## Build the App

A shell script has been added that builds the Java (using `mvn`) and then builds a docker image

```bash
./step0.sh
```

You can see the docker image with:

```bash
$ docker images
REPOSITORY                                     TAG               IMAGE ID       CREATED        SIZE
localhost/jibber                               gvmee-jdk17-0.0.1           ff10601f53a3   17 hours ago   598MB
```

You can now build a GraalVM Native Image version of this app and generate a docker image from it with the following script:

```bash
./step1.sh
```

## Running the App

A Docker Compose has ben provided that will start the contianer, plus cAdvisor and Prometheus. These other tools will allow us to generate pretty graphs of the RSS (Resident Set Size) for the application running in the container.

This will now start the folloing versions of the apps, on differnt ports:

* Java: http://localhost:8081/jibber
* Native Executable (generated by Native Image) : http://localhost:8082/jibber

```bash
docker-compose up -d
```
## Reviewing the Performance

You can access the app over the following URL (depending on where you run it you may need to setup port forwarding):

[Jibber Endpoint](http://localhost:8081/jibber)

Run the followinf script to get som efun stats on the container, start-up times and latency for the end point:

```bash
./stats.sh
```

## Stopping the App

```bash
docker-compose stop
```

## Purge all Docker Resources - Images, Containers, Volumes, and Networks

Credits: https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes

Docker provides a single command that will clean up any resources — images, containers, volumes, and networks — that are dangling (not tagged or associated with a container). To additionally remove any stopped containers and all unused images (not just dangling images), add the -a flag to the command:

```bash
docker system prune -a
```