#!/bin/bash

cd "$MM_DLK_PATH/MyDatalake/docker"
docker exec -it namenode hdfs dfsadmin -safemode leave
docker exec -it datanode hdfs dfsadmin -safemode leave

docker run --rm --platform linux/x86_64 \
   -v /home/manuel-montero/MM_DLK/mydlk-dbt/:/usr/app/ \
   -v /home/manuel-montero/MM_DLK/mydlk-dbt/.dbt:/root/.dbt \
   manuelms1993/mm-dbt dbt init dbt_compute