FROM ruby:3.1.4
USER nonrootuser
RUN apt-get update -qq && apt-get install -y --no-install-recommends build-essential libpq-dev nodejs
WORKDIR /home/app
COPY DatAnnouncement/ .
RUN bundle install --verbose

