FROM ruby:2.7.4
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /myapp
COPY Gemfile Gemfile.lock ./
RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]
