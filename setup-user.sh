#!/bin/bash

set -ex

./bin/kafka-configs.sh --zookeeper localhost:2181 --alter --add-config 'SCRAM-SHA-512=[password='admin-secret']' --entity-type users --entity-name admin

./bin/kafka-configs.sh --zookeeper localhost:2181 --alter --add-config 'SCRAM-SHA-512=[password='secret']' --entity-type users --entity-name demouser

./bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:demouser --operation Create --operation Describe  --topic demo-topic

./bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:demouser --producer --topic demo-topic

./bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:demouser --consumer --topic demo-topic --group demo-consumer-group