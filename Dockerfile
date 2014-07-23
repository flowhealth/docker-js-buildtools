FROM ubuntu:trusty

MAINTAINER Viktor Miroshnikov <me@vmiroshnikov.com>
# Basic prereq
RUN apt-get -q -y update

RUN apt-get -q -y install nodejs npm git wget nodejs-legacy
RUN wget https://saucelabs.com/downloads/sc-4.3-linux.tar.gz -O - | tar -xz -C /usr/local --strip-components=1
RUN npm -g install grunt grunt-cli bower protractor

# Add gihtub RSA fingerprint
# RUN mkdir /root/.ssh && touch /root/.ssh/known_hosts && ssh-keyscan -H "github.com" >> /root/.ssh/known_hosts && chmod 600 /root/.ssh/known_hosts

