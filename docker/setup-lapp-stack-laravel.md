# How to configure environment for Laravel project
## Preparation
- Change firewall on your computer to docker mount volumn sucessfully.
- Create a folder and clone your source code to your computer (My source codes is on ```E:/project/API```). This folder will be mount into docker container:
- Please install docker on you computer before. This tutorial i will guide you on Docker ce 17.09 (Windows 10)


## Build Docker container from Docker images
The ```docker run``` command must specify an IMAGE. Open your terminal and type:

```
docker run -itd --name <container-name> -p <expose-port> -v /path/to/project:/var/www/project nguyentoanit/centos6-apache-postgresql-php7-nodejs-cron
```

Example:

```
docker run -itd --name <container-name> -p 80:80 -p 5432:5432 -p 8000-8010:8000-8010 -v E:\project:/var/www/project nguyentoanit/centos6-apache-postgresql-php7-nodejs-cron
```

## Configure services on docker container
Run commands in a running container with ```docker exec``` command:

```
docker exec -it <container-name> bash
```

### Configuration of PostgreSQL
You can change password of default user (postgres user) of PostgreSQL.

Switch Linux user to postgres user:

```
su postgres
```

Login into PostgreSQL service:

```
psql
```

Create database for project:

```
CREATE DATABASE <database-name> ENCODING 'UTF8';
```

then change password of postgres user:

```
\password postgres
```

Enter new password of postgres user and Logout PostgreSQL service:

```
\q
exit
```

If you want to create new super user for PostgreSQL, You must login PostgreSQL and create new user with following commands:

```
su postgres
psql
CREATE USER <username> SUPERUSER;
\password <password>
\q
exit
```

After you configure user in PostgreSQL. You can allow remote connection. To allow remote connection. You must change configuration of PostgreSQL:

Open ```postgresql.conf``` fie:

```
vi /var/lib/pgsql/data/postgresql.conf
```

Find ```#listen_addresses = 'localhost'``` line, uncomment and change to ```listen_addresses = '*'```
Save and exit.

Next Open ```pg_hba.conf``` file:

```
vi /var/lib/pgsql/data/pg_hba.conf
```

Find and change:

```
local   all         all                               ident
```
to

```
local   all         all                               md5
```

After add new policy for remote connection:

```
host    all             all     0.0.0.0/0               md5
```

Finally, Restart PostgreSQL service:

```
service postgresl restart
```

### Configuration of Apache
Open Apache configuration file:

```
vi /etc/httpd/conf/httpd.conf
```

Change following configurations:

```
DocumentRoot "/var/www/html"
```
to

```
DocumentRoot "/path/to/your/project"
```

For example, My project path is: ```/var/www/project/API```. I will change to:

```
DocumentRoot "/var/www/project/API/public"
```

Change:

```
<Directory />
    Options FollowSymLinks
    AllowOverride None
</Directory>
```
to

```
<Directory />
    Options FollowSymLinks
    AllowOverride All
</Directory>
```

### Configuration of project
Go to project folder:

```
cd /path/to/project
```
For example:

```
cd /var/www/project/API
```

Create .env, .gitignore file and update php libraries:

```
cp .env.example .env
touch .gitignore
composer update
```

Generate key for project (Key will be inserted into .env file):

```
php artisan key:generate
```

Add following file and folder into .gitignore file:

```
echo ".gitignore" >> .gitignore
echo ".env" >> .gitignore
echo "/vendor" >> .gitignore
echo "composer.lock" >> .gitignore
```

Open .env file and configure database connection:

```
...
DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=<database-name>
DB_USERNAME=<postgresql-user>
DB_PASSWORD=<password-of-postgresql-user>
...
```

Run migration tool of Laravel:

```
php artisan migrate
```

Open your browser and enter your docker container ip.
- With Docker ce for windows 10, Linux: Enter ```localhost``` on address bar of browser.
- With Docker toolbox: Enter ```192.168.99.100``` on address bar of browser.

## REF:
- https://www.docker.com/
- https://docs.docker.com/engine/installation/
- https://docs.docker.com/engine/reference/run/#general-form
- https://laravel.com/docs/5.5
