#!/bin/bash

cd /Users/manuelmontero/MM_DLK/MyDatalake/docker
docker compose -f docker-compose-dbt.yml --profile atlasdb up -d
sleep 10