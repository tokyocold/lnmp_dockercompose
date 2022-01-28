FROM php:7.4.27-fpm

#modifying apt sources
ADD sources.list /etc/apt

RUN ["apt-get","update"]

#installing php-extension-installer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

#Installing extensions
RUN install-php-extensions gd xdebug redis pdo_mysql zip exif pcntl bcmath opcache mysqli

#Installing composer
COPY --from=composer /usr/bin/composer /usr/bin/composer

#modifying composer source
RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

#modifying workspace
WORKDIR /usr/share/nginx/html
