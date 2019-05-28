# How To Configure SSH Key-Based Authentication on a Linux Server
## How To Create SSH Keys
We can use a special utility called ssh-keygen. By default, this will create a 2048 bit RSA key pair, which is fine for most uses.

On your local computer, generate a SSH key pair by typing:
```
ssh-keygen
```
```
Generating public/private rsa key pair.
Enter file in which to save the key (/home/username/.ssh/id_rsa):
```
By default, the keys will be stored in the ~/.ssh directory within your user's home directory. The private key will be called **id_rsa** and the associated public key will be called **id_rsa.pub**.
## How To insert a Public Key to your Server
The easiest way to copy your public key to an existing server is to use a utility called **ssh-copy-id**. Because of its simplicity, this method is recommended if available.

To use the utility, you simply need to specify the remote host that you would like to connect to and the user account that you have password SSH access to. This is the account where your public SSH key will be copied.

The syntax is:
```
ssh-copy-id username@remote_host
```
You may see a message like this:
```
The authenticity of host '111.111.11.111 (111.111.11.111)' can't be established.
ECDSA key fingerprint is fd:fd:d4:f9:77:fe:73:84:e1:55:00:ad:d6:6d:22:fe.
Are you sure you want to continue connecting (yes/no)? yes
```
This just means that your local computer does not recognize the remote host. This will happen the first time you connect to a new host. Type "yes" and press ENTER to continue.

Next, the utility will scan your local account for the **id_rsa.pub** key that we created earlier. When it finds the key, it will prompt you for the password of the remote user's account:
```
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
username@111.111.11.111's password:
```
Type in the password (your typing will not be displayed for security purposes) and press **ENTER**. The utility will connect to the account on the remote host using the password you provided. It will then copy the contents of your **~/.ssh/id_rsa.pub** key into a file in the remote account's home **~/.ssh** directory called **authorized_keys**. You can go to SSH server and check it.

## Authenticate to your Server Using SSH Keys
If you have successfully completed one of the procedures above, you should be able to log into the remote host without the remote account's password.

The basic process is the same:
```
ssh username@remote_host
```

## Refernces:
- https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server
