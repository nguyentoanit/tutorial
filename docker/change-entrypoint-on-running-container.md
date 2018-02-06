# Run a script when start container in running container

## Option 1: Change ```.bashrc```

```.bashrc``` is a shell script that Bash runs whenever it is started interactively. You can put any command in that file that you could type at the command prompt.

Open ```.bashrc```:

```
vi ~/.bashrc
```

And add your script into file:

```
...

sh /usr/local/bin/shell_script.sh
...
```

Create ```shell_script.sh``` file and write your script:

```
echo 'service httpd start' > /usr/local/bin/shell_script.sh
```

## Commit running container and build container again using commited container

Use this command to override Entrypoint when you build container:

```
docker run --entrypoint "/bin/ls -al /root" debian
```