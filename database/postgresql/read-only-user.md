# How to create a read only user on Postgresql 9.3+!
## Create user account on Postgresql
First, you create a new account on Postgresq:
```
CREATE USER viewonly WITH PASSWORD '7BAA98uX';
```
After, Configure read only user for all table
```
GRANT SELECT ON ALL TABLES IN SCHEMA public TO viewonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA public 
GRANT SELECT ON TABLES TO viewonly;
```
To reset the password if you have forgotten:
```
ALTER USER "user_name" WITH PASSWORD 'new_password';
```