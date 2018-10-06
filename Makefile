build:
	docker-compose build

up:
	docker-compose up -d

up-non-daemon:
	docker-compose up

start:
	docker-compose start

stop:
	docker-compose stop

restart:
	docker-compose stop && docker-compose start

shell-web:
	docker exec -ti django-cont bash

shell-db:
	docker exec -ti postgres-cont bash

shell-nginx:
	docker exec -ti nginx-cont bash

log-web:
	docker-compose logs web

log-db:
	docker-compose logs db

log-nginx:
	docker-compose logs nginx

collectstatic:
	docker exec django-cont /bin/sh -c "python manage.py collectstatic --noinput"
