FROM	wordpress:php8.5-fpm-alpine
#redis not installed 
RUN		apk add -y curl mariadb-client;

RUN     curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; chmod +x /usr/local/bin/wp
COPY    conf/wpscript.sh /usr/local/bin/install_wordpress
COPY    conf/check.sh /usr/local/bin/check
RUN     chmod +x /usr/local/bin/install_wordpress
RUN     chmod +x /usr/local/bin/check
WORKDIR /var/www/http

ENTRYPOINT	["install_wordpress"]

HEALTHCHECK --interval=5s --timeout=15s --retries=3\
    CMD [ "check" ]
