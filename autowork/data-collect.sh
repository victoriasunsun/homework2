#!/bin/bash

yum install -y wget

wget https://raw.githubusercontent.com/victoriasunsun/BigData-1/master/reader.txt

docker cp data-forhadoop.md hadoop-node1:/

docker cp data-analyze.sh hadoop-node1:/

docker exec -it hadoop-node1 /bin/bash