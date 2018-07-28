FROM ruby:alpine

LABEL maintainer="Rob Pickerill <rob.pickerill@linuxadept.io"

ARG S3_WEBSITE_VERSION=latest
ENV S3_WEBSITE_VERSION=$S3_WEBSITE_VERSION

RUN apk update --no-cache \
    && gem install s3_website --no-rdoc --no-ri

WORKDIR /data

ENTRYPOINT ["s3_website"]
CMD ["help"] 
