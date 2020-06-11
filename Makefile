# Build application
build:
	docker-compose build


# Build cli docker-compose.cli.yml
cli-build:
	docker-compose -f docker-compose.cli.yml build --pull


# Create new app flutter
create-app:
	docker-compose -f docker-compose.cli.yml run --rm flutter create $(NAME_APP) && \
	sudo chmod -R 777 app/$(NAME_APP)/


# Start application
start:
	docker-compose up