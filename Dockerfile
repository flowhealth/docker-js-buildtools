FROM ubuntu:trusty

MAINTAINER Viktor Miroshnikov <me@vmiroshnikov.com>

# Basic prereq
RUN apt-get -q -y update
RUN apt-get -q -y install nodejs npm git wget nodejs-legacy ruby-full rubygems-integration
RUN gem install sass
RUN useradd cubuntu -m
# Add gihtub RSA fingerprint
RUN mkdir /root/.ssh && touch /root/.ssh/known_hosts && ssh-keyscan -H "github.com" >> /root/.ssh/known_hosts && chmod 600 /root/.ssh/known_hosts
USER ubuntu
