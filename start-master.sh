#!/bin/bash

# start hadoop master container
sudo docker rm -f hadoop-master
echo "start hadoop-master container..."
sudo docker run -it \
                --net=hadoop \
                -p 50070:50070 \
                -p 8088:8088 \
                --name hadoop-master \
                --hostname hadoop-master \
                sench/hcd:1.0


# get into hadoop master container
sudo docker exec -it hadoop-master bash
