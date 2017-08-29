# Docker image for LOVD server

[Leiden Open Variation Database (LOVD)](http://www.lovd.nl/) provides a flexible, freely available tool for Gene-centered collection and display of DNA variations.
LOVD version 3.0 extends this idea to also provide patient-centered data storage and storage of NGS data, even of variants outside of genes.

This Docker image provides stable LOVD installation with Apache 2 web server, PHP.
Database management system (such as MySQL) should be in another Docker container.
The [docker-compose](https://docs.docker.com/compose/) tool helps deploying all required container (see `docker-compose.yml` file).

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
- `LOVD_BASEDIR` accept access to LOVD via custom base URL for multiple sites

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

## Building image

``` bash
git clone git@github.com:labbcb/docker-lovd.git
cd docker-lovd
docker image build --tag welliton/lovd .
```
