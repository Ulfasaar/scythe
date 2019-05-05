FROM ubuntu:16.04

# create folder for code to go to
RUN ls -a
RUN mkdir /home/code

RUN apt update

# version pin this later maybe both are pretty stable so maybe not
RUN apt install vim curl wget gnupg git software-properties-common node-gyp -y


# insert ppta stuff here
RUN add-apt-repository -y ppa:deadsnakes/ppa

RUN apt update


# nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install nodejs -y
RUN npm install -g yarn@1.10.1



# clone theai configure and run

# guessing that this is broken somewhere here cus it cant download the package files
# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
# RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
# RUN apt update
# RUN apt install yarn -y


# if I can get yarn to install at least it should install nodejs too???


# RUN apt install nodejs -y

# RUN apt install nodejs=0.8.23-1chl1~precise1
# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# RUN nvm install 10.13.0

# RUN npm install -g yarn@1.10.1
# RUN npm install -g yarn

# RUN yarn global add wetty

RUN apt install shellinabox

EXPOSE 4200

# python
RUN apt install python3.7 -y

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3.7 get-pip.py


#nginx
# RUN apt install nginx -y

# Install Nginx.
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

RUN service shellinaboxd start


# https://github.com/dockerfile/nginx/blob/master/Dockerfile
# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443

# RUN python3.7 -m pip install -r requirements.txt

# apparently vim doesn't work sigh.... maybe it will work with wetty

# add jupyter notebooks and lab for different code editor???

# ok it runs with shellinabox but i haven't tested it yet cus need the container to somehow stay alive?

# https://stackoverflow.com/questions/25775266/how-to-keep-docker-container-running-after-starting-services
# sounds like I need to use runit or something??


# configure vim

# install other tools eg nodejs yarn etc

# install Python and deps

# start vim in code folder

# starting nginx and running that to keep container alive for now
WORKDIR /home/code


# ugh this is so stupid and hard consider just creating the web terminal myself and use theia for now
# just package theia up meself by git cloning etc



# CMD ["/etc/nginx/nginx"]
# CMD ["nginx"]
# CMD ["wetty", "."]
# CMD [ "vim", "."]