FROM alpine:latest

LABEL maintainer="TRYDOCK Maintainers <trydock@pulsiot.com>"
ENV LC_ALL=en_GB.UTF-8
RUN echo "Installing Mariadb" && \
    apk add --no-cache mariadb mariadb-client mariadb-server-utils tzdata bash vim pwgen
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld_safe"]
