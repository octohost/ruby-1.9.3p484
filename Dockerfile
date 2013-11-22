FROM ubuntu:precise

RUN apt-get install -y git curl build-essential make
RUN apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:brightbox/ruby-ng-experimental
RUN apt-get update
RUN apt-get install -y ruby1.9.1
RUN gem install foreman bundler --no-ri --no-rdoc
