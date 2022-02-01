# lnmp_dockercompose

lnmp开发环境docker-compose文件。

- php7.4.27-fpm
  - xdebug3
  - redis,mysql,pdo等常用扩展
- nginx
- mysql
- redis
- phpmyadmin

composer已经更换为国内阿里源。

要求：docker,docker-compose软件。



## 0. 说明

`docker-compose up`一键生成lamp开发环境。

可以在laravel,thinkphp框架下使用。



## 1.使用

1. 下载框架（laravel,thinkphp)
2. 复制docker-compose.yml,container_config/到项目根目录下
3. docker-compose up.



## 2.访问

项目地址：http://localhost

phpmyadmin:http://localhost/pma

xdebug:

phpstorm配置xdebug监听端口9003.



## 3.其他

##### 安装composer依赖

1. docker images 查看生成的php images.
2. docker run --rm -v $(pwd):/app -w /app PHP_IMAGE composer require symfony/console 

##### 修改配置

 所有的配置文件在container_config下，修改后重新docker-compose up即可。	
