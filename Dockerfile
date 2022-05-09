FROM php:7-apache

RUN apt-get update
RUN apt-get install wget -y

RUN wget https://github.com/DataDog/dd-trace-php/releases/download/0.73.0/datadog-php-tracer_0.73.0_amd64.deb -O /opt/datadog-php-tracer.deb
RUN dpkg -i /opt/datadog-php-tracer.deb

RUN wget https://github.com/DataDog/dd-trace-php/releases/latest/download/datadog-setup.php -O datadog-setup.php
RUN php datadog-setup.php --php-bin all --enable-appsec

COPY ./app /var/www/html
COPY ./docs /var/www/docs
COPY ./database /var/www/database

RUN docker-php-ext-install pdo pdo_mysql

RUN cd .. && chown www-data. . -R

