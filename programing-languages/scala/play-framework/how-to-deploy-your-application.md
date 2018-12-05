# Deploying your application

Requirement:

- SBT (https://www.scala-sbt.org/)
- Java
- Unzip package
- A web service (Nginx, Apache,..)

After you install Sbt build tool sucessfully, Go to project and run command `sbt dist`

This produces a ZIP file containing all JAR files needed to run your application in the **target/universal** folder of your application.

To run the application, unzip the file on the target server, and then run the script in the bin directory. The name of the script is your application name, and it comes in two versions, a bash shell script, and a windows .bat script.

```
unzip my-first-app-1.0.zip
```

> For Unix users, zip files do not retain Unix file permissions so when the file is expanded the start script will be required to be set as an executable `chmod +x /path/to/bin/<project-name>`

You can also specify a different configuration file for a production environment, from the command line

```
/path/to/bin/<project-name> -Dpidfile.path=/var/run/play.pid -Dplay.http.secret.key=<secret-key> -Dhttp.port=<port> &
```

You can easily deploy your application as a stand-alone server by setting the application HTTP port to 80

```
/path/to/bin/<project-name> -Dhttp.port=80
```

However, if you plan to host several applications in the same server or load balance several instances of your application for scalability or fault tolerance, you can use a front end HTTP server.

> Note that using a front end HTTP server will rarely give you better performance than using Play server directly. However, HTTP servers are very good at handling HTTPS, conditional GET requests and static assets, and many services assume a front end HTTP server is part of your architecture.

## Set up with nginx

This example shows you how to configure nginx as a front end web server. Note that you can do the same with Apache, but if you only need virtual hosting or load balancing, nginx is a very good choice and much easier to configure!

The /etc/nginx/nginx.conf file should define things like this:

```
worker_processes  1;

events {
    worker_connections  1024;
}

http {
  include       mime.types;
  default_type  application/octet-stream;

  sendfile        on;
  keepalive_timeout  65;

  proxy_buffering    off;
  proxy_set_header   X-Real-IP $remote_addr;
  proxy_set_header   X-Forwarded-Proto $scheme;
  proxy_set_header   X-Forwarded-For $proxy_add_x_forwarded_for;
  proxy_set_header   Host $http_host;
  proxy_http_version 1.1;

  upstream my-backend {
     server 127.0.0.1:9000;
  }

  server {
    listen       80;
    server_name www.mysite.com;
    location / {
       proxy_pass http://my-backend;
    }
  }

  #server {
  #  listen               443;
  #  ssl                  on;
  #
  #  # http://www.selfsignedcertificate.com/ is useful for development testing
  #  ssl_certificate      /etc/ssl/certs/my_ssl.crt;
  #  ssl_certificate_key  /etc/ssl/private/my_ssl.key;
  #
  #  # From https://bettercrypto.org/static/applied-crypto-hardening.pdf
  #  ssl_prefer_server_ciphers on;
  #  ssl_protocols TLSv1 TLSv1.1 TLSv1.2; # not possible to do exclusive
  #  ssl_ciphers 'EDH+CAMELLIA:EDH+aRSA:EECDH+aRSA+AESGCM:EECDH+aRSA+SHA384:EECDH+aRSA+SHA256:EECDH:+CAMELLIA256:+AES256:+CAMELLIA128:+AES128:+SSLv3:!aNULL:!eNULL:!LOW:!3DES:!MD5:!EXP:!PSK:!DSS:!RC4:!SEED:!ECDSA:CAMELLIA256-SHA:AES256-SHA:CAMELLIA128-SHA:AES128-SHA';
  #  add_header Strict-Transport-Security max-age=15768000; # six months
  #  # use this only if all subdomains support HTTPS!
  #  # add_header Strict-Transport-Security "max-age=15768000; includeSubDomains"
  #
  #  keepalive_timeout    70;
  #  server_name www.mysite.com;
  #  location / {
  #    proxy_pass  http://my-backend;
  #  }
  #}
}
```

## Set up with Apache

The example below shows a simple set up with Apache httpd server running in front of a standard Play configuration.

```
LoadModule proxy_module modules/mod_proxy.so
…
<VirtualHost *:80>
  ProxyPreserveHost On
  ServerName www.loadbalancedapp.com
  ProxyPass  /excluded !
  ProxyPass / http://127.0.0.1:9000/
  ProxyPassReverse / http://127.0.0.1:9000/
</VirtualHost>
```

> Configuring trusted proxies https://www.playframework.com/documentation/2.6.x/HTTPServer#configuring-trusted-proxies

# References

- https://www.playframework.com/documentation/2.6.x/Production
- https://www.playframework.com/documentation/2.6.x/HTTPServer
-
