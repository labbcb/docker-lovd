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

Edit `docker-compose.yml`:

- `MYSQL_ROOT_PASSWORD` password for MySQL root user
- `MYSQL_DATABASE` name of database for LOVD
- `MYSQL_USER` user for LOVD
- `MYSQL_PASSWORD` password for LOVD MySQL user

Edit `config.ini.php`:

- `username` user for LOVD (same of `MYSQL_USER`)
- `password` password for LOVD MySql user (same of `MYSQL_PASSWORD`)
- `database` name of database for LOVD (same of `MYSQL_DATABASE`)

```
docker-compose up -d
```

To stop containers

```
docker-compose down
```