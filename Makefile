all:
	sudo mkdir -p /home/nfascia/data/mariadb
	sudo mkdir -p /home/nfascia/data/wordpress
	sudo chmod 777 /home/nfascia/data/mariadb
	sudo chmod 777 /home/nfascia/data/wordpress
	sudo docker-compose -f ./srcs/docker-compose.yml up -d --build

re: clean all

stop:
	sudo docker-compose -f ./srcs/docker-compose.yml stop

clean: stop
	sudo docker-compose -f ./srcs/docker-compose.yml down -v

fclean: clean
	sudo rm -rf /home/nfascia/data/wordpress
	sudo rm -rf /home/nfascia/data/mariadb
	sudo docker system prune -af

