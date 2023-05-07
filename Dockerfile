FROM ruby:3.1.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /home/app
COPY . .
RUN bundle install --verbose

