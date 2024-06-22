#!/bin/bash

cd /Users/manuelmontero/MM_DLK/MyDatalake/docker
docker run --expose=10000 --rm --platform linux/x86_64 \
   -v /Users/manuelmontero/MM_DLK/mydlk-dbt/:/usr/app/ \
   -v /Users/manuelmontero/MM_DLK/mydlk-dbt/.dbt:/root/.dbt \
  manuelms1993/mm-dbt --help
