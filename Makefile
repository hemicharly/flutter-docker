# Build image flutter development
build:
	docker-compose build

# Run image flutter development
run:
	docker-compose run --rm flutter_development /bin/bash