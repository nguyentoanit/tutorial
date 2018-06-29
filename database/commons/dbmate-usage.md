# Dbmate
Dbmate is a database migration tool, to keep your database schema in sync across multiple developers and your production servers. It is a standalone command line tool, which can be used with any language or framework. This is especially helpful if you are writing many services in different languages, and want to maintain some sanity with consistent development tools.

## Usage
Create configuration file

```
vi .env
```

Enter connection string into configuration file `DATABASE_URL="mysql://username:password@127.0.0.1:3306/test_db"`
If on your source code there is not a folder which contain SQL files. Please create SQL folder

```
mkdir sql
```

To create a new migration, use this command
```
dbmate -d "./sql" new test_sql
```

Create DATABASE and show list databases
```
CREATE DATABASE test_db;
SHOW DATABASES;
```

Run migrations
```
dbmate -d "./sql" migrate
```

Show tables in test_db databse
```
SHOW TABLES IN test_db;
```

Rollback migration
```
dbmate -d "./sql" rollback
```

Table schema_migrations store history of migration

# Refs:
- http://dbmate.readthedocs.io/en/latest/
