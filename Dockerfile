FROM ubuntu:18.04
MAINTAINER Ricardo Martins - ricmart@microsoft.com - http://rmartins.cloud

# Packages
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y php7.2-fpm
RUN apt-get install -y git

# Nginx 
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
RUN rm /etc/nginx/sites-available/default
ADD ./default /etc/nginx/sites-available/default

# Build
RUN mkdir -p /var/www/app
WORKDIR /var/www/app
RUN git clone https://github.com/ricmmartins/simple-php-app.git
RUN mv simple-php-app/* /var/www/app  

EXPOSE 80 
CMD service php7.2-fpm start && nginx -g "daemon off;" 
