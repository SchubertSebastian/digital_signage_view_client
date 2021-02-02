# webclient project

## Manual Deployment

- Clone the repo (because it is private, you need your cedentials)
```
git clone https://<github-username>>:<github-password>@github.com/dispway/ng-weblient.git
```

- XiboApiClient (new method for request)
- XiboService (execute new method)
```
docker build -f src/main/docker/Dockerfile.multistage.jvm -t dispway/webclient-jvm .
docker save dispway/webclient-jvm > webclient-jvm.tar
```

- Am Museum Server:
```
cd /opt/webclient-deployment-main
sudo docker-compose -f webclient-docker-compose.yml down
sudo docker load -i webclient-jvm.tar
sudo docker-compose -f webclient-docker-compose.yml up -d
```

## Log-Output

in console

````
sudo docker-compose -f webclient-docker-compose.yml logs -f webclient-backend
````

