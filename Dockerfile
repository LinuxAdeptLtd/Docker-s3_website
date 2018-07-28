FROM ruby:alpine

LABEL maintainer="Rob Pickerill <rob.pickerill@linuxadept.io"

RUN apk update --no-cache \
    && gem install s3_website --no-rdoc --no-ri

WORKDIR /data

ENTRYPOINT ["s3_website"]
CMD ["help"] 
