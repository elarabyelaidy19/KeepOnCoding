include .env

build:
	docker-compose build

dev: up bash

up:
	docker-compose up -d

deploy:
	docker-compose -f docker-compose-production.yml build
	docker-compose  -f docker-compose-production.yml up -d

deploy-staging:
	docker-compose -f docker-compose-staging.yml build
	docker-compose  -f docker-compose-staging.yml up -d

logs:
	docker-compose logs -f app

console:
	docker-compose exec app rails console

restart:
	docker-compose restart

bash:
	docker-compose exec app bash

exec-db:
	docker-compose exec db bash

stop:
	docker-compose stop

down:
	docker-compose down
