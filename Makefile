current_dir = $(shell pwd)
tag = sjeandeaux/docker-swagger-editor
littleName = swagger-editor
publish = -p 8888:8888
 
build:
	docker build -t $(tag) .

proxy-build:
	docker build -t $(tag) -f $(shell docker-proxy-file) .

rm:
	docker rm -f $(littleName)

rmi:
	docker rmi -f $(tag)

logs:
	docker logs $(littleName)

exec:
	docker exec -ti $(littleName) /bin/bash

run:
	docker run -d --name $(littleName) $(publish) $(tag)
run-ti:
	docker run -ti --name $(littleName) $(publish) $(tag)
