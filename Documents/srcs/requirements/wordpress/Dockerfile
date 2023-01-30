FROM	debian:buster

RUN	apt-get -y update && apt-get -y upgrade
RUN	apt-get -y install \
	wget		\
	php7.3		\
	php-fpm		\
	php-mysql	\
	mariadb-client	\
	vim
RUN	wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN	cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN	chown -R root:root /var/www/wordpress
COPY	conf/php.ini /etc/php/7.3/cli/php.ini
RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN	chmod +x wp-cli.phar
RUN	mv wp-cli.phar /usr/local/bin/wp
ADD	conf/auto_config.sh ./auto_config.sh
ENTRYPOINT	sh ./auto_config.sh
