FROM ruby:2.5.1 
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /finance-backend
WORKDIR /finance-backend
ADD Gemfile /finance-backend/Gemfile
ADD Gemfile.lock /finance-backend/Gemfile.lock
RUN bundle install
ADD . /finance-backend

