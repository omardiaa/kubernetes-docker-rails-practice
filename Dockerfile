FROM ruby:3.1.3
WORKDIR /app

COPY . .

EXPOSE 3000

RUN gem install rails bundler
RUN bundle check || bundle install
RUN bundle exec rake db:create db:schema:load

CMD ["rails", "server", "-b", "0.0.0.0"]
