FROM php:8.2.10-apache-bookworm

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

ADD docker/99-xdebug.ini /usr/local/etc/php/conf.d/99-xdebug.ini
