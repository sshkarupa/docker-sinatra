FROM ruby:2.4.1-alpine
MAINTAINER Sergey Shkarupa <s.shkarupa@gmail.com>

ENV APP_HOME /usr/src/app

WORKDIR $APP_HOME
ADD . $APP_HOME

RUN bundle install

EXPOSE 9294

CMD ["bundle", "exec", "rackup", "config.ru", "-p", "9294", "-o", "0.0.0.0"]
