#!/bin/bash

export ELASTIC_VERSION=7.12.0
export ELASTICSEARCH_USERNAME=qumulo
export ELASTICSEARCH_PASSWORD=changeme
export ELASTICSEARCH_HOST=NODE1
export INITIAL_MASTER_NODES=NODE1

docker network create --driver overlay --attachable qumulo
docker stack deploy --compose-file docker-compose.yml qumulo
