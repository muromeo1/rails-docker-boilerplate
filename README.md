### Getting started

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

---------
### Running the project

1. Run docker-compose:
```sh
docker compose up
```
2. Then access `http://localhost:3000`

---------
### Extras

Running rails commands
```
docker compose run source rails g controller ...
```

Bundle install (it's necessary to build docker service again)
```
docker compose build
```
