#!/bin/bash

cd /Users/manuelmontero/MM_DLK/MyDatalake/docker
docker compose -f docker-compose-dbt.yml run --rm dbt --help