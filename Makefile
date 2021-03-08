default:
	@printf "$$HELP"


# Docker commands
docker-build:
	docker-compose up -d
	@docker exec -it lumen-book bash -c "composer install --prefer-source --no-interaction"

docker-down:
	docker-compose down --rmi all -v --remove-orphans

docker-start:
	docker-compose up -d

docker-tests:
	@docker exec -it lumen-book bash -c "./vendor/bin/phpunit --verbose"

docker-coverage:
	@docker exec -it lumen-book bash -c "./vendor/bin/phpunit --coverage-text"

docker-ssh:
	@docker exec -it lumen-book bash

docker-stop-all:
	docker stop $(docker ps -a -q)
ssh-web1:
	ssh -i ./SSH/id_rsa_marcos.pub root@web1.marcware.es


define HELP
# Docker
	- default:
	- docker-build:
	- docker-stop
	- docker-down:
	- docker-start:
	- docker-tests:
	- docker-coverage:
	- docker-ssh:

endef

export HELP