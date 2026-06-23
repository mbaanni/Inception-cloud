FROM        alpine:3.12 AS TLS

RUN         apk add openssl

RUN         mkdir -p /etc/ssl/private && \
            openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
            -keyout /etc/ssl/private/server.key \
            -out /etc/ssl/private/server.crt \
            -subj "/C=MA/ST=Tanger-Tetouan/L=Martil/O=inception/CN=mbaanni.42.fr"

FROM        nginx:stable-alpine-perl
# check this folder
RUN         mkdir -p /run/nginx/

COPY        --from=TLS /etc/ssl/private/ /etc/ssl/private/
COPY        conf/default /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]