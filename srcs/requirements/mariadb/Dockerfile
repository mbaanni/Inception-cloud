FROM	mariadb:13.0.1-resolute-rc

COPY	conf/install.sh /usr/local/bin/install_mariadb
RUN		chmod +x /usr/local/bin/install_mariadb

ENTRYPOINT ["install_mariadb"]