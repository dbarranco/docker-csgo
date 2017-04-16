# Dockerised CS:GO Server. ![](https://img.shields.io/badge/Status-Work%20In%20Progress-yellow.svg)   ![](https://img.shields.io/badge/Tested-Manually-brightgreen.svg)

This repo contains a dockerised cs:go server.

Size of the docker image: **106MB**.

>Warning: When the server is installed you will have around 15Gb of space used by the container. 

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

## Environment variables

Currently, the only environment variable available to configure is the Game Server Login Token (GSLT). 

This token is necessary if you want to make your containerised server publicly available. Quoting Valve:

> CS:GO game servers and GOTV relays not logged in to a persistent game server account with a Game Server Login Token (GSLT) will only allow clients to connect from the same LAN RFC1918 addresses (10.0.0.0-10.255.255.255,172.16.0.0-172.31.255.255,192.168.0.0-192.168.255.255). If your server has a public routable IP address and clients need to connect from outside the server LAN then you need to get registered for GSLT.

****
**Useful information:**

[Valve docs about GSLT](https://developer.valvesoftware.com/wiki/Counter-Strike:_Global_Offensive_Dedicated_Servers#Registering_Game_Server_Login_Token)

[Creating the GSLT](http://steamcommunity.com/dev/managegameservers)

### Specifying environment variables using docker compose

```
version: '2'
services:
  csgo:
    build: .
    ports:
      - '27015/udp:27015/udp'
    environment:
      - GAME_SERVER_LOGIN_TOKEN=1231B77D451FE2230DC1
```
### Specifying environment variables on the Docker command line

```
docker run -d \
    -p [PORT]:27015/udp \
    --env GAME_SERVER_LOGIN_TOKEN= 1231B77D451FE2230DC1 \
    dbaus/csgo
```


## Future work
- [ ] Include custom config files to the server
- [ ] How to make the container lightweighter
- [ ] Move it to K8s
- [ ] CI/CD?
