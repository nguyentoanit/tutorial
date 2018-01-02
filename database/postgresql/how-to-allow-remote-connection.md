# How to allow remote connection on PostgreSQL on Linux
To allow remote connection:

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
