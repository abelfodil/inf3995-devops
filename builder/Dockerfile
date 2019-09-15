FROM alpine

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

RUN apk update && apk upgrade

RUN apk add --no-cache bash
RUN apk add --no-cache build-base clang cmake ninja 
RUN apk add --no-cache gtest gmock
