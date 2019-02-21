#!/bin/bash
set -o errexit
set -o nounset

mvn clean package
mvn dockerfile:build
docker-compose up

curl http://localhost:9200/_cat/indices?v
curl http://localhost:9200/_nodes?pretty=true
