docker network create wp -d bridge

docker volume create wordpress 
docker volume create db



docker run --name mysql --hostname db01 -p 3306:3306 \
--net wp \
-e MYSQL_DATABASE=exampledb \
-e MYSQL_USER=exampleuser \
-e MYSQL_PASSWORD=examplepass \
-e MYSQL_RANDOM_ROOT_PASSWORD=1 \
-v db:/var/lib/mysql mysql:5.7



docker   run --name wordpress -p 80:80 \
--net wp \
-e WORDPRESS_DB_HOST=mysql \
-e WORDPRESS_DB_USER=exampleuser \
-e WORDPRESS_DB_PASSWORD=examplepass \
-e WORDPRESS_DB_NAME=exampledb \
-v wordpress:/var/www/html wordpress
