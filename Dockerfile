FROM ubuntu:14.04

MAINTAINER Birkhoff Lee <birkhoff.lee.cn@gmail.com>

# Set the environment up
WORKDIR ~
RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get install ca-certificates nodejs-legacy npm git -y -q --no-install-recommends; \
    apt-get clean; \
    apt-get autoclean; \
    apt-get autoremove; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# SSL Certificate Installation
WORKDIR /usr/ssl/certs
RUN curl http://curl.haxx.se/ca/cacert.pem | awk '{print > "cert" (1+n) ".pem"} /-----END CERTIFICATE-----/ {n++}'; \
    c_rehash

# Install forever and coffeeScript library
RUN npm i -g forever coffee-script

# Download blogRedirect
WORKDIR ~
RUN mkdir /var/www; \
    chmod 755 /var/www; \
    cd /var/www; \
    git clone https://d85ee37642e186502f5b460f03ad434778a4287e@github.com/BirkhoffLee/blogRedirect.git

# Prepare blogRedirect
WORKDIR /var/www/blogRedirect
RUN npm i

# Ports
EXPOSE 1827

# Run
WORKDIR /var/www/blogRedirect
CMD forever start -c coffee index.coffee && bash
