# Ansible on Centos 6
## Basics / What Will Be Installed
Ansible by default manages machines over the SSH protocol.

Once Ansible is installed, it will not add a database, and there will be no daemons to start or keep running. You only need to install it on one machine (which could easily be a laptop) and it can manage an entire fleet of remote machines from that central point. When Ansible manages remote machines, it does not leave software installed or running on them, so there’s no real question about how to upgrade Ansible when moving to a new version.

## Installing the Control Machine
### Latest Release Via Yum
RPMs for RHEL6 are available from yum for EPEL 6 and currently supported Fedora distributions.

Now we need install EPEL repository:

```
yum install -y http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
```

Install Ansible and Open-SSH:

```
yum install -y ansible openssh-clients
```

Generate a SSH key on Control Machine and Copy ssh key to remote machines:

Use ```ssh-keygen```:

```
# ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/ylo/.ssh/id_rsa): mykey
Enter passphrase (empty for no passphrase): 
Enter same passphrase again:
Your identification has been saved in mykey.
Your public key has been saved in mykey.pub.
The key fingerprint is:
SHA256:GKW7yzA1J1qkr1Cr9MhUwAbHbF2NrIPEgZXeOUOz3Us ylo@klar
The key's randomart image is:
+---[RSA 2048]----+
|.*++ o.o.        |
|.+B + oo.        |
| +++ *+.         |
| .o.Oo.+E        |
|    ++B.S.       |
|   o * =.        |
|  + = o          |
| + = = .         |
|  + o o          |
+----[SHA256]-----+
#
```

Once an SSH key has been created, the ssh-copy-id command can be used to install it as an authorized key on the server. Once the key has been authorized for SSH, it grants access to the server without a password.
Use a command like the following to copy SSH key:

```
ssh-copy-id user@host
```

Test new key:

```
ssh user@host
```

## Test first command on Ansible
Now that you’ve installed Ansible, it’s time to get started with some basics.
Edit (or create) /etc/ansible/hosts and put one or more remote systems in it.

```
192.0.2.50
aserver.example.org
bserver.example.org
```

Now ping all your nodes:

```
ansible all -m ping
```

Or run a live command on all of your nodes:

```
ansible all -a "/bin/echo hello"
```
