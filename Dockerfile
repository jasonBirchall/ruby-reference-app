FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y nodejs sqlite3

RUN useradd rails --uid 1000 -U -M

ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

RUN mkdir /opt/blog
WORKDIR /opt/blog

COPY Gemfile Gemfile.lock ./
RUN bundle install 

COPY . ./
 
RUN chown -R rails:rails /opt/blog

# Start the main process.
EXPOSE 3000
USER rails
CMD ["rails", "server", "-b", "0.0.0.0"]
