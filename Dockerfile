FROM ruby:2.7.0
COPY ./Gemfile* ./
RUN bundle install -j4

VOLUME /usr/src/app
CMD "rails" "server"