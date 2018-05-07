# SET PASSWORD FOR MYSQL USER
First, You have to login Mysql:
```
mysql -h <host> -u <username> -D <database> -P <port> -p<password>
```

After you login sucessfully using this query to change password of user
```
SET PASSWORD FOR 'root'@'%' = PASSWORD('new-password');
```
Goodluck!
