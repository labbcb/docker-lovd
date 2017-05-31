# Docker image for LOVD server

## Building image

``` bash
git clone git@github.com:labbcb/docker-lovd.git
cd docker-lovd
docker image build --tag welliton/lovd .
```

## Installing docker-compose

```
sudo pip install --upgrade pip
sudo pip install docker-compose
```

## Runing image

Edit `docker-compose.yml` before running image.

- `MYSQL_ROOT_PASSWORD` password for MySQL root user
- `MYSQL_DATABASE` name of database for LOVD
- `MYSQL_USER` user for LOVD
- `MYSQL_PASSWORD` password for LOVD MySQL user
- `LOVD_DB_USER` user for LOVD (same of `MYSQL_USER`)
- `LOVD_DB_PASSWORD` passord for LOVD MySQL user (same of `MYSQL_PASSWORD`)

```
docker-compose up -d
```

To stop containers

```
docker-compose down
```