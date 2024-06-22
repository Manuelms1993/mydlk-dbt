#!/bin/bash

cd /Users/manuelmontero/MM_DLK/MyDatalake/docker

docker exec -it namenode hdfs dfsadmin -safemode leave
docker exec -it datanode hdfs dfsadmin -safemode leave
docker run --expose=10000 --rm --platform linux/x86_64 \
   -v /Users/manuelmontero/MM_DLK/mydlk-dbt/:/usr/app/ \
   -v /Users/manuelmontero/MM_DLK/mydlk-dbt/.dbt:/root/.dbt \
   manuelms1993/mm-dbt debug \
   --profiles-dir "/root/.dbt" \
   --project-dir "/usr/app/dbt/dbt_compute" \
   --profile hive

