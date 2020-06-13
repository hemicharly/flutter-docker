# Build image flutter development
build:
	docker-compose build

# Permission user development in /dev/kvm
permission:
	docker-compose run --rm  --user root development_flutter bash && \
    chown $(user) /dev/kvm

# Run image flutter development
run:
	docker-compose run --rm development_flutter bash