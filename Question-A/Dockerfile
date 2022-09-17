FROM php:7.4-cli
RUN mkdir -p /usr/src/myapp
COPY ./src/cli/cron.php /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "php", "./cron.php" ]

