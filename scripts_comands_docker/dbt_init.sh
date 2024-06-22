#!/bin/bash

cd /Users/manuelmontero/MM_DLK/MyDatalake/docker
docker compose -f docker-compose-hadoop-hive.yml run --rm dbt init dbt_compute