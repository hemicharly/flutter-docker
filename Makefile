# Build cli docker-compose.cli.yml
cli-build:
	docker-compose -f docker-compose.cli.yml build --pull

# Create new app flutter
create-app:
	docker-compose -f docker-compose.cli.yml run --rm flutter create $(name) && \
	sudo chmod -R 777 app/$(name)/

# Execute command flutter in docker
flutter:
	docker-compose -f docker-compose.cli.yml run --rm flutter $(cmd)

# Flutter run
run:
	docker-compose -f docker-compose.cli.yml run --rm flutter run

# Execute command generator apk
apk:
	docker-compose -f docker-compose.cli.yml run --rm flutter build apk --release

# Execute command generator ios
ios:
	docker-compose -f docker-compose.cli.yml run --rm flutter build ios --release
