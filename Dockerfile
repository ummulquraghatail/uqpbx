
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    apache2 \
    php \
    php-mysql \
    php-pear \
    mariadb-server \
    asterisk \
    wget \
    curl \
    git \
    unzip \
    nano \
    sudo

EXPOSE 80 5060/udp 5060/tcp

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
