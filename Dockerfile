FROM php:8.2-fpm

RUN apt-get update
RUN apt-get install -y autoconf pkg-config libssl-dev libzip-dev git gcc make autoconf libc-dev vim unzip
RUN docker-php-ext-install bcmath sockets zip

WORKDIR /app

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/ \
    && ln -s /usr/local/bin/composer.phar /usr/local/bin/composer

CMD php -S 0.0.0.0:8000
