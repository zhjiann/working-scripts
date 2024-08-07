#!/bin/bash

exit_count=$(docker ps -a | grep -c Exit)

if [ "${exit_count}" -ne 0 ]; then
    docker ps -a | grep Exited | awk '{print $NF}'  | xargs -n 1 -I {} bash -c 'docker start {} && echo "docker start {} > /data/br/logs/start_containers.log"'
fi
