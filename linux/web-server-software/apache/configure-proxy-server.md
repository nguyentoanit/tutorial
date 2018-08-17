# How to configure reversed proxy server
## Preparations
- Please expose port of web server.
- Set up apache service on Proxy server

## Configuration
- Login Proxy server by root user
- Check proxy module of apache was enabled or not yet by ```httpd -M ``` command:

```
...
 proxy_module (shared)
 proxy_balancer_module (shared)
 proxy_ftp_module (shared)
 proxy_http_module (shared)
 proxy_ajp_module (shared)
 proxy_connect_module (shared)
...
```
**Note:** If proxy module have not enabled yet, Please turn on proxy module.

- Next, open apache configuration file and add a virtual host block:

```
vi /etc/httpd/conf/httpd.conf
```

- Add a virtual host block:

```
<VirtualHost *:80>
        ProxyPreserveHost On
        ProxyPass / http://<local-ip-address>:<expose-port>/
        ProxyPassReverse / http://<local-ip-address>:<expose-port>/
        ServerName <server-name>
</VirtualHost>
```
Example: 

```
<VirtualHost *:80>
        ProxyPreserveHost On
        ProxyPass / http://172.0.0.2:7002/
        ProxyPassReverse / http://172.0.0.2:7002/
        ServerName my-domain.lo
</VirtualHost>
```

REF:
- https://github.com/nguyentoanit/tutorial/blob/master/apache/proxy-server.md
