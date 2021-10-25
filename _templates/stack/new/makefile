---
to: <%= name %>/makefile
---
.PHONY: build

start:
	docker-compose up -d

stop:
	docker-compose down

build:
	docker-compose build
	docker-compose run --rm app composer install

update:
	docker-compose run app composer update -o --with-dependencies

logs:
	docker-compose logs --follow

test: start
	APP_ENV=test docker-compose run app vendor/bin/phpunit