# Puppet Note

- Minimum memory: 2GB

- Server: Create certificate

- Client: Install puppet client. Configure puppet agent to connect server:

```
vi /etc/puppetlabs/puppet/puppet.conf
```

- Insert:

```
[agent]
server=<server-name>
```

- Write Puppet Manifests files to apply for puppet agent:

- Client will check on server on 30 minutes. If you want to check manuallly or can change setting on puppet.conf file:

```
puppet agent -t
```

## Refs:
- https://puppet.com/download-open-source-puppet
