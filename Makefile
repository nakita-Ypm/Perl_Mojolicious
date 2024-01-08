include .env

rm:
	docker rm `docker ps -aq`

rmi:
	docker rmi `docker images -q`

up:
	docker-compose up -d

down:
	docker-compose down

enm:
	docker-compose exec -it mojolicious /bin/bash

exe:
	docker-compose exec mojolicious morbo --listen=http://*:3002 ./src/index.pl