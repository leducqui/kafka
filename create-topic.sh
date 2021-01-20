#!/bin/bash

set -ex

./bin/kafka-topics.sh --create --bootstrap-server localhost:9094 --command-config ./config/ssl-user-config.properties --replication-factor 1 --partitions 3 --topic testops-queue
./bin/kafka-topics.sh --create --bootstrap-server localhost:9094 --command-config ./config/ssl-user-config.properties --replication-factor 1 --partitions 3 --topic testops-admin-queue