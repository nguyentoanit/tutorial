# How to Setup Lamp stack on Docker (Windows 10)
## Preparation
- Change firewall on your computer to docker mount volumn sucessfully.
- Create a folder and clone your source code and database to your computer (My source codes is on ```E:/project```). This folder will be mount into docker container:
- Please install docker on you computer before. This tutorial i will guide you on Docker ce 17.12 (Windows 10)

## Build Docker container from Docker images
After you install Docker sucessfully, Start docker service, open Window PowerShell and type this command:

```
docker run -itd --name <container-name> -p <expose-port> -v /path/to/project:/var/www/project nguyentoanit/lamp-centos7-apache-mariadb-php71
```

Example:

```
docker run -itd --name <container-name> -p 80:80 -p 3306:3306 -p 8000-8010:8000-8010 -v E:\project:/var/www/project nguyentoanit/lamp-centos7-apache-mariadb-php71
```

## Configure services on docker container
Run commands in a running container with ```docker exec``` command:

```
docker exec -it <container-name> bash
```

### Configuration of MariaDB
This program is a shell script available on Unix systems, and enables you to improve the security of your MariaDB installation in the following ways:
- You can set a password for root accounts. 
- You can remove root accounts that are accessible from outside the local host.
- You can remove anonymous-user accounts.
- You can remove the test database, which by default can be accessed by anonymous users.
```
mysql_secure_installation
```
The script will prompt you to determine which actions to perform. Default password of root user: ```Null```
```
Example:
localhost:# mysql_secure_installation 

NOTE: RUNNING ALL PARTS OF THIS SCRIPT IS RECOMMENDED FOR ALL MariaDB
      SERVERS IN PRODUCTION USE!  PLEASE READ EACH STEP CAREFULLY!

In order to log into MariaDB to secure it, we'll need the current
password for the root user.  If you've just installed MariaDB, and
you haven't set the root password yet, the password will be blank,
so you should just press enter here.

Enter current password for root (enter for none): 
OK, successfully used password, moving on...

Setting the root password ensures that nobody can log into the MariaDB
root user without the proper authorisation.

You already have a root password set, so you can safely answer 'n'.

Change the root password? [Y/n] n
 ... skipping.

By default, a MariaDB installation has an anonymous user, allowing anyone
to log into MariaDB without having to have a user account created for
them.  This is intended only for testing, and to make the installation
go a bit smoother.  You should remove them before moving into a
production environment.

Remove anonymous users? [Y/n] y
 ... Success!

Normally, root should only be allowed to connect from 'localhost'.  This
ensures that someone cannot guess at the root password from the network.

Disallow root login remotely? [Y/n] y
 ... Success!

By default, MariaDB comes with a database named 'test' that anyone can
access.  This is also intended only for testing, and should be removed
before moving into a production environment.

Remove test database and access to it? [Y/n] y
 - Dropping test database...
 ... Success!
 - Removing privileges on test database...
 ... Success!

Reloading the privilege tables will ensure that all changes made so far
will take effect immediately.

Reload privilege tables now? [Y/n] y
 ... Success!

Cleaning up...

All done!  If you've completed all of the above steps, your MariaDB
installation should now be secure.

Thanks for using MariaDB!
```

After you initial security option for MariaDB, you have to login MariaDB service, create user, database and grant permission for user.
```
mysql -u root -p<password>
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '<password-of-root-user>' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE DATABASE <database-name> CHARACTER SET = 'utf8' COLLATE 'utf8_general_ci';
```
Exit MariaDB with command: ```exit``` and import database if neccessary:
```
mysql -D <database-name> -p<password-of-root-user> < /var/www/project/<sql-file-name>.sql
```

### Configuration of Apache
Create new VirtualHost:

```
vi /etc/httpd/conf.d/<project-name>.conf
```

Insert this configuration into configuration file

```
<VirtualHost *:80>
    DocumentRoot "/var/www/project/"
    ServerName <your-server-name>

    # Other directives here
</VirtualHost>
```

### Configuration of project
Open configuration file on your project and change database connection:

Restart Apache and MariaDB service:
```
systemctl restart httpd
systemctl restart mariadb
```

Close your terminal (Window PowerShell) and change **host** file on your computer.
The Hosts file in Windows 10/8/7, is used to map hostnames to IP addresses. This Hosts file is located deep down in the Windows folder.
#### For Windows 10 and 8
1. Press the **Windows** key.
2. Type **Notepad** in the search field.
3. In the search results, right-click **Notepad** and select **Run as administrator**.
4. From **Notepad**, open the following file: ```c:\Windows\System32\Drivers\etc\hosts```
5. Insert ```127.0.0.1 <your-server-name>``` into end of file.
6. Click **File > Save** to save your changes.

#### For Windows 7 and Vista

1. Click **Start > All Programs > Accessories**
2. Right-click **Notepad** and select **Run as administrator**
3. Click **Continue** on the **Windows** needs your permission UAC window.
4. When **Notepad** opens, click **File > Open**.
5. In the File name field, type ```C:\Windows\System32\Drivers\etc\hosts```
6. Click **Open**.
7. Insert ```127.0.0.1 <your-server-name>``` into end of file.
8. Click **File > Save** to save your changes.

#### Windows NT, Windows 2000, and Windows XP

1. Click **Start > All Programs > Accessories > Notepad**
2. Click **File > Open**
3. In the File name field, type ```C:\Windows\System32\Drivers\etc\hosts```
4. Click **Open**.
5. Insert ```127.0.0.1 <your-server-name>``` into end of file.
6. Click **File > Save** to save your changes.

Open your favorite browser and go to **<your-server-name>**.

## REF:
- https://www.docker.com/
- https://docs.docker.com/engine/installation/
- https://docs.docker.com/engine/reference/run/#general-form
- http://www.thewindowsclub.com/hosts-file-in-windows
- https://support.rackspace.com/how-to/modify-your-hosts-file/
