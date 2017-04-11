FROM servebox/phantomjs:latest

MAINTAINER Welpdev

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

RUN apt-get update -qq && apt-get upgrade -y && apt-get remove -y node && apt-get install -y nodejs npm
# node legacy fix
RUN ln -s /usr/bin/nodejs /usr/bin/node
