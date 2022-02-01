#!/bin/bash
set -x
 

docker-compose run --rm -w /usr/share/nginx/html/laravel-blog php composer install || exit 1

docker-compose run --rm -w /usr/share/nginx/html/laravel-blog php php artisan key:generate || exit 1

docker-compose run --rm -w /usr/share/nginx/html/laravel-blog php php artisan horizon:install || exit 1
 
docker-compose run --rm -w /usr/share/nginx/html/laravel-blog php php artisan telescope:install || exit 1

docker-compose run --rm -w /usr/share/nginx/html/laravel-blog php php artisan storage:link || exit 1

docker run --rm -it -v $(pwd):/app -w /app -e NODE_OPTIONS=--openssl-legacy-provider node yarn || exit 1

docker-compose run --rm -w /usr/share/nginx/html/laravel-blog php php artisan migrate --seed || exit 1

docker run --rm -it -v $(pwd):/app -w /app -e NODE_OPTIONS=--openssl-legacy-provider node yarn dev  || exit 1

