.PHONY: dev build up down logs clean

dev:
	npm run dev

build:
	docker compose build

up:
	docker compose down
	docker compose up -d

up-build:
	docker compose down
	docker compose up -d --build

down:
	docker compose down

logs:
	docker compose logs -f frontend

clean:
	docker compose down -v --rmi all
	rm -rf node_modules .next