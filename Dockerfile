FROM node:5-wheezy

RUN apt-get update \
    && apt-get install -y ruby-full \
    && rm -rf /var/lib/apt/lists/*

RUN gem install sass compass rubygems-update

RUN npm install -g gulp \
    && npm install -g bower \
    && npm install -g node-gyp
