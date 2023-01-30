sleep 10;
if [ ! -e /var/www/wordpress/wp-config.php ]; then
	wp config create --allow-root \
	--dbname=$SQL_DATABASE \
	--dbuser=$SQL_USER \
	--dbpass=$SQL_PASSWORD \
	--dbhost=mariadb:3306 --path='/var/www/wordpress'
fi
if [ ! -d /run/php ]; then
    mkdir ./run/php

/usr/sbin/php-fpm7.3 -F
fi
