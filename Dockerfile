FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y nodejs sqlite3

ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

RUN mkdir /opt/blog
WORKDIR /opt/blog

COPY Gemfile Gemfile.lock ./
RUN bundle install 

COPY . ./
 
# Start the main process.
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
