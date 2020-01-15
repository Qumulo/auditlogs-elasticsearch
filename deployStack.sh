#!/bin/bash

export ELASTIC_VERSION=7.5.0
export ELASTICSEARCH_USERNAME=qumulo
export ELASTICSEARCH_PASSWORD=changeme
export ELASTICSEARCH_HOST=dq2-a-40g
export INITIAL_MASTER_NODES=dq2-a-40g

docker network create --driver overlay --attachable qumulo
docker stack deploy --compose-file docker-compose.yml qumulo
