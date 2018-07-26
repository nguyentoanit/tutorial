# How to change Volumn and Ports of existing container
Firstly, stop containers and docker service.

Run `docker inspect <container-name>` to find path of configuration file of that container
Find line:

```
...
"ResolvConfPath": "/var/lib/docker/containers/xxxxx/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/xxxxx/hostname",
        "HostsPath":
...
```
As you see, Configuration folder of  `xxxxx` container is `/var/lib/docker/containers/xxxxx/`

Go to this folder and You will see a few configuration file:

```
$ sudo ls /var/lib/docker/containers/xxxxx
xxxxx-json.log  checkpoints	config.v2.json	hostconfig.json  hostname  hosts  resolv.conf  resolv.conf.hash  shm
```

Change content of `config.v2.json` and `hostconfig.json` to change mount volumn, mount ports and expose ports
