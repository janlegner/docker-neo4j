#!/bin/sh

CURRENT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

docker run \
    --name neo4j-development \
    --rm \
    --publish=7474:7474 \
    --publish=7687:7687 \
    --volume=$CURRENT_DIR/data:/var/lib/neo4j/data \
    --volume=$CURRENT_DIR/logs:/logs \
    --volume=$CURRENT_DIR/plugins:/var/lib/neo4j/plugins \
    --env=NEO4J_AUTH=none \
    -e "EXTENSION_SCRIPT=/extra-conf.sh" \
    -u $(id -u ${USER}):$(id -g ${USER}) \
    neo4j-custom
