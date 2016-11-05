FROM node:0.10-slim

MAINTAINER Birkhoff Lee <admin@birkhoff.me>

# Set the environment up
WORKDIR ~
RUN apt-get clean; \
    apt-get autoclean; \
    apt-get autoremove; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Forever and CoffeeScript
RUN npm i -g forever coffee-script

# Download BirkhoffLee/jumper
WORKDIR ~
RUN mkdir /var/www; \
    chmod 755 /var/www; \
    cd /var/www; \
    git clone https://github.com/BirkhoffLee/jumper

# Prepare BirkhoffLee/jumper
WORKDIR /var/www/jumper
RUN npm install

# Exposing ports
EXPOSE 1827

# Launch
WORKDIR /var/www/jumper
CMD /bin/bash -c "forever start -c coffee index.coffee &> /dev/null && forever logs -f 0"
