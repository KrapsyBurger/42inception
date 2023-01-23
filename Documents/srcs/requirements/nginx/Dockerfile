FROM	debian:buster
RUN	apt upgrade && apt update && apt install \
	nginx -y \
	vim -y \
	openssl -y
RUN	mkdir -p /etc/nginx/ssl && \
	mkdir -p /var/run/nginx
RUN	openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=nfascia.42.fr/UID=nfascia"
RUN	chmod 755 /var/www/html && \
	chown -R www-data:www-data /var/www/html
#COPY	conf/nginx.conf /etc/nginx/nginx.conf
#CMD	[ "nginx", "-g", "daemon off;" ]
