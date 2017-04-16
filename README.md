# Dockerised CS:GO Server. ![](https://img.shields.io/badge/Status-Work%20In%20Progress-yellow.svg)

This repo contains a dockerised cs:go server.

Size of the docker image: 106MB.

## Usage

This server works out of the box. Only pulling the docker image will start the CS:GO server in `0.0.0.0:27015`

### Using Docker
```
docker run -d \
    -p [PORT]:27015/udp \
    dbaus/csgo
```
> Note: The `-d` option will run the container in daemon mode.

### Using docker-compose

```
docker-compose up 
```

>Warning: When the server is installed you will have around 15Gb of space used by the container. 



## Future work

- [ ] Add the env var to start the server with the Game Server Login Token
- [ ] Include custom config files to the server
- [ ] How to make the container lightweighter
- [ ] Move it to K8s
- [ ] CI/CD?
