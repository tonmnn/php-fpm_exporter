ARG PHP_VERSION=8.3
FROM php:${PHP_VERSION}-fpm-alpine AS php-base

# enable php prod config
RUN  mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
# enable fpm status page
RUN  echo 'pm.status_path = /status' \
     | tee -a "$PHP_INI_DIR/../php-fpm.d/enable-status.conf"

# include simple application to make fpm busy
COPY index.php /var/www/html/index.php
