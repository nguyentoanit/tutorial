# CREATE DATABASE WITH CHARACTER AND COLLATE
First, You have to login Mysql:
```
mysql -h <host> -u <username> -D <database> -P <port> -p<password>
```

After you login sucessfully using this query to create new database
```
CREATE DATABASE database-name CHARACTER SET = 'utf8' COLLATE 'utf8_general_ci';
```
Goodluck!
