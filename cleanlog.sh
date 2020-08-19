#!/bin/bash
echo "======== start clean docker containers logs ========"
logs=$(find /var/lib/docker/containers/ -name *-json.log)
for log in $logs
    do
        echo "clean logs : $log"
        echo "" > $log
    done
