FROM php:7-apache

COPY ./datadog-php-tracer.deb /opt
RUN dpkg -i /opt/datadog-php-tracer.deb

RUN apt-get update
RUN apt-get install wget -y

RUN wget https://github.com/DataDog/dd-trace-php/releases/latest/download/datadog-setup.php -O datadog-setup.php
RUN php datadog-setup.php --php-bin all --enable-appsec

COPY ./app /var/www/html
COPY ./docs /var/www/docs
COPY ./database /var/www/database

RUN docker-php-ext-install pdo pdo_mysql

RUN cd .. && chown www-data. . -R

