ARG PHP_VERSION=8.3
FROM php:${PHP_VERSION}-fpm-alpine AS php-base

# enable php prod config
RUN  mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# enable fpm status page under /metrics with port 9001
RUN  { \
     echo 'pm.status_path = /metrics'; \
     echo 'pm.status_listen = 0.0.0.0:9001'; \
     } | tee -a "$PHP_INI_DIR/conf.d/docker-fpm.ini"

EXPOSE 9001

# include simple application to make fpm busy
COPY index.php /var/www/html/index.php
