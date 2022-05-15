

# Rails Docker Boilerplate

![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)

This boilerplate was created as an intention to facilitate the development of new `Ruby on Rails` projects, without having to install rvm, ruby, postgres, etc, every time.

To run this boilerplate it'll be only necessary to install:

- [Docker](https://docs.docker.com/engine/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

I've made this project to make my life simple, so I already added some necessary gems and configured them to my necessities:

- [Rubocop](https://github.com/rubocop/rubocop)
- [Reek](https://github.com/troessner/reek)
- [RSpec](https://github.com/rspec/rspec-rails)

## Getting started

1. Create a new app:
```sh
# ./rails-docker-boilerplate/

bin/new_app
``` 
2. Enter the name of your project, then setup new project
```sh
# ./your-new-project/

bin/setup
```

## Running the project

1. Run docker-compose:
```sh
docker compose up
```
2. Then access `http://localhost:3000`

## Extras

Running rails commands
```
docker compose run source rails g controller ...
```

Bundle install (it's necessary to build docker service again)
```
docker compose build
```
