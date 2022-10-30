# Streaming Docker Hadoop Cluster

## Description
- This is a streaming hadoop docker cluster that allows you to write MapReduce code without java.
- This project is based on this repo https://github.com/big-data-europe/docker-hadoop.
- This docker cluster uses ubuntu 22.04 as base image and supports python 3.10.

## How To Run
```
chmod +x ./build.sh
./build.sh
```

## Access Hadoop Namenode Shell
```
docker exec -it hadoop_cluster-namenode-1 /bin/bash
```

## Run Example Hadoop Job
```
# copy files into docker hadoop namenode
docker cp ./example_hadoop_job/ hadoop_cluster-namenode-1:/tmp/

# access hadoop namenode shell
docker exec -it hadoop_cluster-namenode-1 /bin/bash

# setup HDFS
hadoop fs -mkdir /<huser>/gender_avg
hadoop fs -put /tmp/example_hadoop_job/CustomerAge.txt /<huser>/gender_avg

# run hadoop job script
/tmp/example_hadoop_job/run_hjob.sh
```
