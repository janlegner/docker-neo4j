#!/bin/sh

CURRENT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

docker run \
    --name neo4j-dev-dump-conf \
    --rm \
    --volume=$CURRENT_DIR/conf:/conf \
    --env=NEO4J_AUTH=none \
    -u $(id -u ${USER}):$(id -g ${USER}) \
    neo4j-custom dump-config
