FROM ubuntu:16.04

RUN ls -a
RUN mkdir /home/code
WORKDIR /home/code

RUN apt update

# version pin this later
RUN apt install vim curl -y


# guessing that this is broken somewhere here cus it cant download the package files
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update
RUN apt install yarn -y


# if I can get yarn to install at least it should install nodejs too???


# RUN apt install nodejs -y

# RUN apt install nodejs=0.8.23-1chl1~precise1
# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# RUN nvm install 10.13.0

# RUN npm install -g yarn@1.10.1
# RUN npm install -g yarn

RUN yarn global add wetty

# apparently vim doesn't work sigh....



# configure vim

# install other tools eg nodejs yarn etc

# install Python and deps

# start vim in code folder

CMD ["wetty", "."]
# CMD [ "vim", "."]