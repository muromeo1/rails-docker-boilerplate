#!/bin/bash

echo == Copying env files ==
cp env-example .env
echo

echo == Creating volumes ==
docker volume create --name source-postgres
echo

echo == Building docker compose ==
docker compose build
echo

echo == Initializing database ==
docker compose run source rake db:reset
docker compose run source rake db:migrate
docker compose run source rake db:test:prepare
echo

echo == Generating secret ==
echo "SECRET_TOKEN=$(docker compose run source rake secret)" >> .env
echo == END ==
