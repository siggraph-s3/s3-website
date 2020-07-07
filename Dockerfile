FROM ruby:2.7-alpine

RUN apk add --no-cache git build-base

RUN apk add --update tzdata

# debug
RUN bundle version

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]