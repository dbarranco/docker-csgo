# Dockerised CS:GO Server

This repo contains a dockerised cs:go server.

## Usage

As this repo is work in progress, the only available method to run the CS:GO Server with the default settings is:

```
docker run -d \
    -p [PORT]:27015/udp \
    dbaus/csgo:0.1
```

## Future work

- [ ] Add the env var to start the server with the Game Server Login Token
- [ ] Include custom config files to the server
- [ ] Make a docker-compose of the server
- [ ] Move it to K8s
- [ ] Continious integration, continious deployment?
