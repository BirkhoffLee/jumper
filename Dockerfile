FROM node:0.10-slim

MAINTAINER Birkhoff Lee <admin@birkhoff.me>

# Set the environment up
WORKDIR ~
RUN echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list; \
    apt-get update; \
    apt-get install unzip -y -q --no-install-recommends; \
    apt-get clean; \
    apt-get autoclean; \
    apt-get autoremove -y; \
    apt-get remove --purge -y $BUILD_PACKAGES $(apt-mark showauto); \
    rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*; \
    export NODE_ENV=production

# Install Forever and CoffeeScript
RUN npm i -g forever coffee-script

# Download BirkhoffLee/jumper
WORKDIR ~
RUN mkdir /var/www; \
    chmod 755 /var/www; \
    cd /var/www; \
    wget "https://github.com/BirkhoffLee/jumper/archive/master.zip"; \
    unzip master.zip -d .; \
    rm master.zip

# Prepare BirkhoffLee/jumper
WORKDIR /var/www/jumper-master
RUN npm install

# Exposing ports
EXPOSE 1827

# Launch
WORKDIR /var/www/jumper-master
CMD /bin/bash -c "forever start -c coffee index.coffee &> /dev/null && forever logs -f 0"
