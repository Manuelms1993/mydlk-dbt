#!/bin/bash

cd "$MM_DLK_PATH/MyDatalake/docker"
docker run --expose=10000 --rm --platform linux/x86_64 \
   -v /home/manuel-montero/MM_DLK/mydlk-dbt/:/usr/app/ \
   -v /home/manuel-montero/MM_DLK/mydlk-dbt/.dbt:/root/.dbt \
  manuelms1993/mm-dbt --help
