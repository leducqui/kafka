FROM openjdk:8u212-jre-alpine

ENV KAFKA_HOME="/usr/gog/kafka"
ENV KAFKA_OPTS=$KAFKA_HOME/config/kafka_server_jaas.conf

COPY . /usr/gog/kafka

WORKDIR /
COPY entrypoint.sh /usr/gog/bin/entrypoint.sh
RUN chmod a+x /usr/gog/bin/entrypoint.sh

ENTRYPOINT ["/usr/gog/bin/entrypoint.sh"]