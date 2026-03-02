# A docker image running squid

## Base Docker Image
[Alpine](https://hub.docker.com/_/alpine) 3.23 (x64)

## Software
[squid](https://www.squid-cache.org/) - A caching web proxy server

## Pull the image or Build it locally
```
docker pull ghcr.io/fullaxx/squid

docker build -t="ghcr.io/fullaxx/squid" github.com/Fullaxx/squid
```

## Run the image
Run the image on port 3128
```
docker run -d -p 3128:3128 ghcr.io/fullaxx/squid
```
Run the image on localhost port 3128
```
docker run -d -p 127.0.0.1:3128:3128 ghcr.io/fullaxx/squid
```
Run the image on localhost port 3128 saving logs to /srv/docker/squid/logs
```
docker run -d -p 127.0.0.1:3128:3128 -v /srv/docker/squid/logs:/var/log/squid ghcr.io/fullaxx/squid
```
