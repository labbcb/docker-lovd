FROM php:apache

LABEL maintainer="well309@gmail.com"

WORKDIR /var/www/html/

ENV LOVD_VERSION 3.0-20

RUN apt-get update && apt-get install --yes --no-install-recommends \
    wget \
    php-soap \
    libxml2-dev \
  && rm -rf /var/lib/apt/lists/* && \
  docker-php-ext-install pdo pdo_mysql soap && \
  wget "http://www.lovd.nl/3.0/download.php?version=${LOVD_VERSION}&type=tar.gz" \
    -O lovd.tar.gz && \
  tar xf lovd.tar.gz --strip-components=2 && \
  rm lovd.tar.gz && \
  a2enmod rewrite
  
COPY docker-lovd-entrypoint /usr/local/bin/

ENTRYPOINT ["docker-lovd-entrypoint"]

CMD ["apache2-foreground"]