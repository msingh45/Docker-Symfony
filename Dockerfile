FROM php:7

RUN apt-get update && apt-get upgrade
RUN apt-get install curl -y && apt-get install zip -y

RUN mkdir -p /usr/local/bin
RUN curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony
RUN chmod a+x+r /usr/local/bin/symfony
RUN mkdir -p /home/symfony/symfonyProject

WORKDIR /home/symfony/symfonyProject

RUN symfony new . 3.4

EXPOSE 8000

ENTRYPOINT ["php"]
CMD ["bin/console", "server:run", "0.0.0.0:8000"]
