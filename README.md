# Containerization for the Garamond search engine
#
TODO: Write description of what is actually available, how to modify, extend

## Build containers

```bash
$ ./docker-build.sh
```

### To build a Garamond image and compile the engine
```bash
$ docker build -f ./Dockerfile.compiled.garamond -t garamond:garamond-compiled .
```

## Run containers
```bash
$ ./docker-compose-opt-dev.sh up
```
