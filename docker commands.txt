docker build -t nginx-practice .
docker run --name ngx -it -p 80:80 -v "%cd%/default:/etc/nginx/sites-available/default" nginx-practice