FROM php:7-apache

# Delete it?
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

COPY ./datadog-php-tracer.deb /opt
RUN dpkg -i /opt/datadog-php-tracer.deb

COPY ./app /var/www/html
COPY ./docs /var/www/docs
COPY ./database /var/www/database

RUN docker-php-ext-install pdo pdo_mysql

RUN cd .. && chown www-data. . -R

