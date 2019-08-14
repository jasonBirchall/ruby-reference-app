FROM ruby:2.6.1-alpine

# Install pre-reqs for building nokogiri & pg gems
RUN apk --update add --virtual build_deps \
        build-base ruby-dev libc-dev linux-headers \
        openssl-dev postgresql-dev libxml2-dev libxslt-dev \
        nodejs vim

# Create user and group for non-root container
RUN addgroup -g 1000 -S appgroup && \
    adduser -u 1000 -S appuser -G appgroup

WORKDIR /app

COPY Gemfile* ./
RUN bundle install

COPY helloworld/. .

USER 1000

CMD {"rails", "server"]
