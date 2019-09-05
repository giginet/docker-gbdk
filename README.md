# docker-GBDK

Docker image to build Gameboy ROMs with GBDK.

```console
$ docker pull giginet/gbdk
$ docker run -it --rm -v `pwd`:/gbdk giginet/gbdk /opt/gbdk/bin/lcc -o /gbdk/rom.gb /gbdk/game.c
$ open rom.gb
```
