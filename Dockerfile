FROM php:8.1-apache

# Install required tools
RUN apt-get update && apt-get install -y \
    wget \
    nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY xdebug.ini /usr/local/etc/php/conf.d/

# Expose Xdebug port
EXPOSE 9003

COPY src/ /var/www/html/
EXPOSE 80