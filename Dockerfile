FROM php:7

RUN apt-get update && apt-get upgrade
RUN apt-get install curl -y && apt-get install zip -y
RUN docker-php-ext-install pdo_mysql

RUN mkdir -p /usr/local/bin
RUN curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony
RUN chmod a+x+r /usr/local/bin/symfony
RUN mkdir -p /home/symfony/symfonyProject

COPY symfonyProject /home/symfony/symfonyProject

WORKDIR /home/symfony/symfonyProject

ENTRYPOINT ["php"]
CMD ["bin/console", "server:run", "0.0.0.0:8000"]
