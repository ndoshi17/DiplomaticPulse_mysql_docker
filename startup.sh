!#/bin/bash

docker build -t mysql_db .

docker run -d -p 3306:3306 --name database_instance -e MYSQL_ROOT_PASSWORD=secretpass mysql_db