# How to list, create and delete Super user on PostgreSQL on Linux
Switch to postgres user:

```
su postgres
```

Login into PostgreSQL service:

```
psql
```

Run a SQL query to create a super user:

```
CREATE USER <postgresql-username> SUPERUSER;
```

If user was existed, PostgreSQL will show error message:

```
ERROR:  role "toanhd005" already exists
```

To list users use:
```
\du
```

To delete a user:

```
DROP USER IF EXISTS <postgresql-username>;
```

If ```<postgresql-username>``` is not existed. PostgreSQL will show notice message:

```
NOTICE:  role "toanhd008" does not exist, skipping
DROP ROLE
```
