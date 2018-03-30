# How Do I Grant Access on MariaDB and MySQL
- Connect to mysql server
```
mysql -h <host> -u <username> -P <port> -p<password>
```

- Run this SQL
```
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

# References
- https://dev.mysql.com/doc/refman/5.7/en/grant.html
