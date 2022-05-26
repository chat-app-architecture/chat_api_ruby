build:
	docker-compose build

start:
	docker-compose up

specs:
	docker-compose run --entrypoint ./scripts/specs web

bash:
	docker-compose exec web bash

console:
	docker-compose exec web bundle exec rails c

brakeman:
	docker-compose run --entrypoint ./scripts/brakeman web

rubocop:
	docker-compose  run --entrypoint rubocop web
