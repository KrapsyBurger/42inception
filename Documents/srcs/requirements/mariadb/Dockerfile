FROM	debian:buster
RUN	apt upgrade -y && apt update -y && apt-get install \
	mariadb-server -y \
	vim -y
COPY	conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
