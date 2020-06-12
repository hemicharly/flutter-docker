# Build cli docker-compose.cli.yml
cli-build:
	docker-compose -f docker-compose.cli.yml build --pull

# Create new app flutter
create-app:
	docker-compose -f docker-compose.cli.yml run --rm flutter create $(NAME_APP) && \
	sudo chmod -R 777 app/$(NAME_APP)/

# Execute command flutter in docker
flutter:
	docker-compose -f docker-compose.cli.yml run --rm flutter $(cmd)

# Flutter run
run:
	docker-compose -f docker-compose.cli.yml run --rm flutter run

# Execute command generator apk
apk:
	docker-compose -f docker-compose.cli.yml run --rm flutter clean && flutter build apk

# Execute command generator ios
ios:
	docker-compose -f docker-compose.cli.yml run --rm flutter clean && flutter build ios
