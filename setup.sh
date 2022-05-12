#!/bin/bash

echo == Copying env files ==
cp env-example .env
echo

echo == Creating volumes ==
docker volume create --name boilerplate-postgres
echo

echo == Building docker compose ==
docker compose up --build --no-start
echo

echo == Initializing database ==
docker compose run boilerplate rake db:reset
docker compose run boilerplate rake db:migrate
echo
echo == END ==