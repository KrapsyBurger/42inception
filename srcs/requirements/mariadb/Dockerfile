FROM		debian:buster
RUN		apt update -y && apt upgrade -y && \
		apt-get install -y mariadb-server
COPY		./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
ADD		./tools/mysql.sh /mysql.sh
ENTRYPOINT	sh mysql.sh
