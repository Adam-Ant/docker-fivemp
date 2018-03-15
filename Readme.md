# RETIRED
## FiveMP is dead, so this container is retired. For a better GTA V modded multiplayer server, check out [spritsail/fivem](https://github.com/spritsail/fivem), a project by the same people who brought you this work of art. /s




# Docker-FiveMP

This Dockerfile runs using port 2322, and requires a volume mounted at /fivemp inside the container. Upon first run, it will populate this volume with the config files and binaries needed. From then on, it will replace missing files but not overwrite, allowing you to make config changes as needed.

## Example run line:
```docker run --name="FiveMP" -d -p 2322:2322/udp -v /volumes/FiveMP:/fivemp adamant/fivemp```

## docker-compose
A docker-compose file is provided for use. Please change the host volume from /volumes/fivemp to wherever it is needed, and the rest should work out of the box.

