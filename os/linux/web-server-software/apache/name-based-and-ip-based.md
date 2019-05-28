# Name-based and IP-based virtual hosting Understanding
## IP-based virtual hosting
IP-based virtual hosting is a method to apply different directives based on the IP address and port a request is received on. Most commonly, this is used to serve different websites on different ports or interfaces.

The server must have a different IP address/port combination for each IP-based virtual host. In the terminology of Apache HTTP Server, using a single IP address but multiple TCP ports, is also IP-based virtual hosting.

- Setting up multiple daemons:

```
Listen 192.0.2.100:80
```

- Setting up a single daemon with virtual hosts

```
<VirtualHost 172.20.30.40:80>
    ServerAdmin webmaster@www1.example.com
    DocumentRoot "/www/vhosts/www1"
    ServerName www1.example.com
    ErrorLog "/www/logs/www1/error_log"
    CustomLog "/www/logs/www1/access_log" combined
</VirtualHost>

<VirtualHost 172.20.30.50:80>
    ServerAdmin webmaster@www2.example.org
    DocumentRoot "/www/vhosts/www2"
    ServerName www2.example.org
    ErrorLog "/www/logs/www2/error_log"
    CustomLog "/www/logs/www2/access_log" combined
</VirtualHost>
```

## Name-based Virtual Host
IP-based virtual hosts use the IP address of the connection to determine the correct virtual host to serve. Therefore you need to have a separate IP address for each host.

With name-based virtual hosting, the server relies on the client to report the hostname as part of the HTTP headers. Using this technique, many different hosts can share the same IP address.

It is important to recognize that the first step in name-based virtual host resolution is IP-based resolution. Name-based virtual host resolution only chooses the most appropriate name-based virtual host after narrowing down the candidates to the best IP-based match. Using a wildcard (*) for the IP address in all of the VirtualHost directives makes this IP-based mapping irrelevant.

If no matching ServerName or ServerAlias is found in the set of virtual hosts containing the most specific matching IP address and port combination, then **the first listed virtual host** that matches that will be used.

For example, suppose that you are serving the domain www.example.com and you wish to add the virtual host other.example.com, which points at the same IP address. Then you simply add the following to httpd.conf:

```
<VirtualHost *:80>
    # This first-listed virtual host is also the default for *:80
    ServerName www.example.com
    ServerAlias example.com 
    DocumentRoot "/www/domain"
</VirtualHost>

<VirtualHost *:80>
    ServerName other.example.com
    DocumentRoot "/www/otherdomain"
</VirtualHost>
```

You can alternatively specify an explicit IP address in place of the * in <VirtualHost> directives. For example, you might want to do this in order to run some name-based virtual hosts on one IP address, and either IP-based, or another set of name-based virtual hosts on another address.

## REF:
- https://httpd.apache.org/docs/2.4/en/vhosts/ip-based.html
- https://httpd.apache.org/docs/2.4/en/vhosts/name-based.html
