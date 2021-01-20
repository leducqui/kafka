FROM openjdk:8u212-jre-alpine

ENV KAFKA_HOME="/usr/gog/kafka"

COPY . /usr/gog/kafka

RUN apk add --no-cache bash

WORKDIR /
COPY entrypoint.sh /usr/gog/bin/entrypoint.sh
RUN chmod a+x /usr/gog/bin/entrypoint.sh

ENTRYPOINT ["/usr/gog/bin/entrypoint.sh"]