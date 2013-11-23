FROM stackbrew/ubuntu:saucy

RUN apt-get install -y git curl build-essential make --force-yes
RUN apt-get install -y software-properties-common --force-yes
RUN add-apt-repository -y ppa:brightbox/ruby-ng-experimental
RUN apt-get update
RUN apt-get install -y ruby1.9.1 --force-yes
RUN apt-get install -y ruby1.9.1-dev --force-yes
RUN gem install foreman bundler --no-ri --no-rdoc

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
