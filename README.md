# docker-swagger-editor

[swagger-editor](https://github.com/swagger-api/swagger-editor)

## Start

```sh
docker run -d --name swagger-editor -p 8888:8888 sjeandeaux/docker-swagger-editor

```

## Start with your configuration

```Dockerfile
FROM sjeandeaux/docker-swagger-editor
COPY defaults.json /swagger/swagger-editor/config/defaults.json
```


Start with bind mount

```sh
docker run -d --name myConfiguration -v /path/myConfiguration.json:/swagger/swagger-editor/config/defaults.json:ro sjeandeaux/docker-swagger-editor
```


```sh
make build
```

This command builds `Dockerfile`. The `FROM` is [official node](https://registry.hub.docker.com/_/node/).

## Run

```sh
make run
```

These commands run swagger-editor container and open your web browser.

