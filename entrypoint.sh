#!/bin/bash

set -ex

chmod -R 777 $KAFKA_HOME

cd $KAFKA_HOME

#bin/zookeeper-server-start.sh config/zookeeper.properties

bin/kafka-server-start.sh config/server.properties