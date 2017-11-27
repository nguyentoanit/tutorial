# How to change default listen port of Postgresql on Centos 6
On Centos 6, If you change go to:
```
/var/lib/pgsql/data/postgresql.conf
```
or
```
/var/lib/pgsql/<version-number>/data/postgresql.conf
```
After restart postgresql service, it still doesn't work.
You can try changing service start script on:
```
/etc/init.d/postgresql
```
or
```
/etc/init.d/postgresql<version>
```
Open file and find ``` PGPORT=5432 ``` change it to **Your Desired Port Number**
And Do not forget restart postgresql service.
Goodluck!
