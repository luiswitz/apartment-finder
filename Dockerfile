FROM ruby:2.4-slim

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev imagemagick cron

RUN touch /var/log/cron.log

ENV INSTALL_PATH /apartment-finder

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY Gemfile ./

ENV BUNDLE_PATH /box

COPY . .

CMD cron && tail -f /var/log/cron.log
