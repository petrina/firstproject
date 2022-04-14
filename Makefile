up:
	docker-compose up

start:
	docker-compose start

stop:
	docker-compose stop

dev-serve:
	docker exec firstproj php artisan serve --port=8000 --host=0.0.0.0

migrate:
	docker exec firstproj php artisan migrate

version:
	docker exec -it firstproj-nginx nginx -v && docker exec firstproj-db mysql -V && docker exec firstproj php -v && docker exec firstproj php artisan -V
