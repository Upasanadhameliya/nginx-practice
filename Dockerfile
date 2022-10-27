FROM ubuntu:latest

RUN apt-get update

RUN $'6\n44\n' | apt-get -y install nginx 

COPY default /etc/nginx/sites-available/default

EXPOSE 80

# CMD ["nginx" "-g" "daemon off;"]

CMD ["service","nginx","start"]