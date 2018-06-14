FROM php:5.6.36-fpm-jessie

RUN apt-get update && apt-get install -y curl libcurl4-openssl-dev
RUN docker-php-ext-install curl
RUN docker-php-ext-enable curl

RUN docker-php-ext-install pdo
RUN docker-php-ext-enable pdo

RUN apt-get install -y libxml2-dev
RUN docker-php-ext-install xml
RUN docker-php-ext-enable xml

RUN docker-php-ext-install session
RUN docker-php-ext-enable session

RUN docker-php-ext-install mbstring
RUN docker-php-ext-enable mbstring

RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-enable pdo_mysql

WORKDIR /var/www
CMD ["php-fpm"]

