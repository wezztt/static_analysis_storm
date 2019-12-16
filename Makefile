install:
	make docker-build
	sudo chmod +x phpcs.sh
	sudo chmod +x php-cs-fixer.sh
	sudo chmod +x phpmd.sh

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:
	docker-compose up --build -d

docker-destroy:
	docker-compose down --rmi all

docker-restart:
	make docker-down
	make docker-up