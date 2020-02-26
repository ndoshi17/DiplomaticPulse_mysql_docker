# DiplomaticPulse_mysql_docker
A repo for the files to build and startup the database docker

To run this simply run the following commands:

chmod +x startup.sh

./startup.sh

This will start up the container completely you can then connect to the mysql database on the container using:

mysql -P 3306 --protocol=tcp -u root -p

Then enter the password that can be found in the startup.sh file.

This assumes you have Docker installed and running as well as mysql.
