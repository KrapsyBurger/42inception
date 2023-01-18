FROM	alpine:3.16.0
RUN	apk update && apk upgrade && apk add \
	nginx \
	vim \
	openssl \
	&& mkdir -p /etc/nginx/ssl && openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=nfascia.42.fr/UID=nfascia"
