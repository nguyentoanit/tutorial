# How Do I Grant Access on MariaDB and MySQL
- Connect to mysql server:
```
mysql -h <host> -u <username> -P <port> -p<password>
```

- Run this SQL:
```
GRANT ALL PRIVILEGES ON <database>.* TO '<username>'@'<ip-address>' IDENTIFIED BY '<password>' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

If you want grant to all databases and ip address using root user:

```
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

- Restart service.

# References
- https://dev.mysql.com/doc/refman/5.7/en/grant.html
