#!/usr/bin/env bash

pwd
docker build --label $1 -t jefftian/tapd-webhook:$1 ./nginx && {

    docker push jefftian/tapd-webhook:$1
} || {
    echo "Error: docker build failed!"
    exit 1
}
