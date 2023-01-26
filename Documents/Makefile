build:
	docker-compose -f srcs/docker-compose.yml build
up:
	docker-compose -f srcs/docker-compose.yml up -d
down:
	docker-compose -f srcs/docker-compose.yml down
run:
	build up
stop:
	down
clean:
	docker image prune -a
fclean:
	docker system prune --volumes -a
