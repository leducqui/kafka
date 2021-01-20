#!/bin/sh

set -ex

cd $KAFKA_DIR

$KAFKA_HOME/bin/zookeeper-server-start.sh config/zookeeper.properties

#./bin/kafka-server-start.sh config/server.properties