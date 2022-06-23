install:
	make docker-build
	sudo chmod +x phpcs.sh
	sudo chmod +x php-cs-fixer.sh
	sudo chmod +x phpmd.sh
	sudo chmod +x phpstan.sh

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:
	docker pull php:8-alpine
	docker-compose build --no-cache php_static_analyzer
	make docker-restart

docker-destroy:
	docker-compose down --rmi all

docker-restart:
	make docker-down
	make docker-up