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
	docker-compose -f srcs/docker-compose.yml stop

clean:	stop
	docker-compose -f srcs/docker-compose.yml down -v
	
fclean: stop
	rm -rf /home/nfascia/data/mariadb
	rm -rf /home/nfascia/data/wordpress
	docker system prune --volumes -a
