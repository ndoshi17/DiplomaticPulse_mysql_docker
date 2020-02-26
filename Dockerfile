FROM mysql

ENV MYSQL_DATABASE UN_SCRAPE_DATA

COPY ./sql-startup-scripts /docker-entrypoint-initdb.d/