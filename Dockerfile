FROM ubuntu:latest

RUN ["apt-get", "update"]

RUN $'6\n44\n' | apt-get -y install nginx 

EXPOSE 80

RUN ["apt-get", "install", "net-tools"]

COPY ./bloggingtemplate /

CMD ["/bin/bash"]

# CMD ["nginx" "-g" "daemon off;"]
# RUN ["service", "nginx", "start"]