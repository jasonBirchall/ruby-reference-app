FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y nodejs sqlite3

ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install --path .bundle/gems --binstubs .bundle/bin 

COPY . /myapp
 
# Start the main process.
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
