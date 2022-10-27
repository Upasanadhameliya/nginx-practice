FROM ubuntu:latest

RUN apt-get update

RUN apt-get -y install nginx<<< $'6\n44\n'

COPY default /etc/nginx/sites-available/default

EXPOSE 80/tcp

CMD ["service","nginx","start"]