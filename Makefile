# Build image flutter development
build:
	docker-compose build

# Permission user development in /dev/kvm
permission:
	docker exec -it --user root development_flutter bash

# Run image flutter development
run:
	docker-compose run --rm development_flutter /bin/bash