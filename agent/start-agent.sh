#!/bin/bash

docker run -it -e SERVER_URL="teamcity-server-instance:8111"  \
    -v `pwd`/conf:/data/teamcity_agent/conf  \
    --network my-net \
    esp-idf:latest
