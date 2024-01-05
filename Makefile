include .env

rm:
	docker rm `docker ps -aq`

rmi:
	docker rmi `docker images -q`

up:
	docker-compose up -d

down:
	docker-compose down

# expressコンテナに入る
enm:
	docker-compose exec -it mojolicious /bin/bash

# exe:
# 	docker-compose exec mojolicious perl src/index.pl

exe:
	docker-compose exec mojolicious morbo --listen=http://*:3001 ./src/index.pl