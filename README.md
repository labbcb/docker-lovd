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

Edit `docker-compose.yml` before.
It will work with no modification for testing purpose.

For `db` container:

- `MYSQL_ROOT_PASSWORD` password for MySQL root user
- `MYSQL_DATABASE` name of database for LOVD
- `MYSQL_USER` user for LOVD
- `MYSQL_PASSWORD` password for LOVD MySQL user

For `lovd` container:

- `LOVD_DB_NAME` user for LOVD (same of `MYSQL_USER`)
- `LOVD_DB_PASSWORD` password for LOVD MySql user (same of `MYSQL_PASSWORD`)
- `LOVD_DB_NAME` name of database for LOVD (same of `MYSQL_DATABASE`)
- `LOVD_TABLE_PREFIX` prefix of LOVD tables (default is `lovd`)

```
docker-compose up -d
```

## Stop containers

```
docker-compose down
```

Database will still avaibable at `db_data` volume.
To stop containers and delete volumes run.

```
docker-compose down --volumes
```

