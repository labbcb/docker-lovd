FROM php:apache

MAINTAINER Welliton Souza <well309@gmail.com>

WORKDIR /var/www/html/

RUN apt-get update && \
  apt-get install --yes wget php-soap libxml2-dev && \
  rm -rf /var/lib/apt/lists/* && \
  docker-php-ext-install pdo pdo_mysql soap && \
  wget "http://www.lovd.nl/3.0/download.php?version=3.0-17&type=tar.gz" \
    -O lovd.tar.gz && \
  tar xf lovd.tar.gz --strip-components=2 && \
  rm lovd.tar.gz && \
  a2enmod rewrite

COPY config.ini.php .