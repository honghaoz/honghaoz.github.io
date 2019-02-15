# Docker

References: https://theswiftdev.com/2018/11/15/docker-loves-swift-and-vapor/

- `Run`: creates a new layer
- `CMD`: sets default command and/or parameters,

By default, Docker containers can’t see each other. However, Docker has a tool, Docker Compose, designed to link together different containers for testing and running applications.

```
#1
docker-compose build
#2
docker-compose up --abort-on-container-exit
```

Here’s what this does:
1. Build the different docker containers.
2. Spin up the different containers and run the tests. --abort-on-container-exit tells Docker Compose to stop the postgres container when the til-app container stops. The postgres container used for this test is different from, and doesn’t conflict with, the one you’ve been using during development.
