#!/bin/bash

exit_count=$(docker ps -aq -f status=exited | wc -l)

if [ "${exit_count}" -ne 0 ]; then
    docker ps -a -q -f status=exited | xargs -I {} bash -c 'docker start {} && echo "docker start {}" >> /data/br/logs/start_containers.log'
fi
