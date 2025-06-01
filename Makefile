FILE = ./srcs/docker-compose.yml

all:
	docker compose -f $(FILE) up -d --build

up : all

stop:
	docker compose -f $(FILE) stop

start:
	docker compose -f $(FILE) start

down:
	docker compose -f $(FILE) down -v

clean: down
	docker rmi nginx:nginx
	docker rmi wordpress:wordpress
	docker rmi mariadb:mariadb
	docker rmi adminer:adminer
	docker rmi my-website:my-website
	docker rmi portainer:portainer
	docker rmi redis:redis
	docker rmi ftp-server:ftp-server

re: down up