FROM ruby:3.0.0

WORKDIR /var/gem

COPY . .

RUN gem install bundler:2.3.14

RUN bundle check > /dev/null 2>&1 || bundle install -j4
