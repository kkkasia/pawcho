FROM ubuntu:latest

LABEL maintainer="Kateryna Zinchuk <s99825@pollub.edu.pl>"

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y apache2 && \
    apt-get clean

COPY index.html /var/www/html/index.html

EXPOSE 8080

CMD ["apachectl", "-D", "FOREGROUND"]
