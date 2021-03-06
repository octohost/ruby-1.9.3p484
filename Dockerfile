FROM stackbrew/ubuntu:saucy

RUN apt-get update && apt-get install -y git curl build-essential make libxslt-dev libxml2-dev libmysqlclient-dev libpq-dev libsqlite3-0 libsqlite3-dev software-properties-common --force-yes
RUN add-apt-repository -y ppa:brightbox/ruby-ng-experimental
RUN apt-get update
RUN apt-get install -y ruby1.9.1 ruby1.9.1-dev --force-yes
RUN gem install foreman bundler --no-ri --no-rdoc

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
