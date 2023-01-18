#!/bin/bash

# set current work dir
cwd=$(pwd)

# Docker command
docker run --rm -it \
--name robotrunner \
--mount type=bind,src="${cwd}/report",target=/report \
--mount type=bind,src="${cwd}/testcase/",target=/robotfiles \
robotimg:test1 

