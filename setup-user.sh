#!/bin/bash

set -ex

# Create super user
./bin/kafka-configs.sh --zookeeper localhost:2181 --alter --add-config 'SCRAM-SHA-512=[password='admin123']' --entity-type users --entity-name admin

# Create user and config ACL
#./bin/kafka-configs.sh --zookeeper localhost:2181 --alter --add-config 'SCRAM-SHA-512=[password='secret']' --entity-type users --entity-name testops
#
#./bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:demouser --operation Create --operation Describe  --topic testops-queue
#
#./bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:demouser --producer --topic testops-queue
#
#./bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:demouser --consumer --topic testops-queue --group testops