### Build
```
docker build -t nginx-practice .
```


### Run (Windows CMD)
```
docker run --name ngx ^
-it -p 80:80 ^
-v "%cd%/default:/etc/nginx/sites-available/default" ^
-v "%cd%/nginx.conf:/etc/nginx/nginx.conf" ^
nginx-practice
```

### Copy a file from the container to host
```
docker cp {container_id}:/etc/nginx/sites-available/default .
```