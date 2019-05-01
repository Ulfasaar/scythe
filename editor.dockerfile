FROM ubuntu:16.04

RUN ls -a
RUN mkdir /home/code
WORKDIR /home/code

RUN apt update

# version pin this later
RUN apt install vim curl -y

RUN apt install nodejs -y

# RUN apt install nodejs=0.8.23-1chl1~precise1
# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# RUN nvm install 10.13.0

# RUN npm install -g yarn@1.10.1
RUN npm install -g yarn

RUN yarn global add wetty

# apparently vim doesn't work sigh....



# configure vim

# install other tools eg nodejs yarn etc

# install Python and deps

# start vim in code folder

CMD ["wetty", "."]
# CMD [ "vim", "."]