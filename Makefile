.PHONY: info start stop restart enter log deletedangling

info:
	@echo All Docker containers
	sudo docker ps -a
	@echo All Docker networks
	sudo docker network ls

start:
	sudo docker-compose up -d --build

stop:
	sudo docker-compose down -v

restart:
	- sudo docker-compose down -v
	- sudo docker-compose up -d --build

enter:
	sudo docker exec -it nodejslocaldev bash -I

log:
	sudo docker logs -f nodejslocaldev

deletedangling:
	sudo docker rmi $$(sudo docker images -f "dangling=true" -q)