build:
	docker-compose -f srcs/docker-compose.yml build
up:
	docker-compose -f srcs/docker-compose.yml up -d
down:
	docker-compose -f srcs/docker-compose.yml down

run:
	sudo mkdir -p /home/nfascia/data/mariadb && sudo chmod 777 /home/nfascia/data/mariadb
	sudo mkdir -p /home/nfascia/data/wordpress && sudo chmod 777 /home/nfascia/data/wordpress
	cd srcs && docker-compose up

stop:
	down
clean:
	docker image prune -a
fclean:
	docker system prune --volumes -a
