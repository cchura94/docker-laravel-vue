echo "Levantando contenedores (docker)"
cd backend_proyecto_laravue
docker-compose up -d

docker-compose exec -T laravel composer install
docker-compose exec -T laravel php artisan optimize
docker-compose exec -T laravel php artisan migrate:fresh
docker-compose exec -T laravel php artisan db:seed

echo "La aplicación está lista en localhost:80 y localhost:80/api

