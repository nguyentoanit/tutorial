# Run a script when start container in running container

Create ```entrypoint.sh``` file and write your script:

```
echo 'service httpd start' > /usr/local/bin/entrypoint.sh
```

## Option 1: Change ```.bashrc```

```.bashrc``` is a shell script that Bash runs whenever it is started interactively. You can put any command in that file that you could type at the command prompt.

Open ```.bashrc```:

```
vi ~/.bashrc
```

And add your script into file:

```
...

sh /usr/local/bin/entrypoint.sh
...
```

## Option 2: Commit running container and build container again using commited container

Permission for entrypoint file:

```
chmod 777 /usr/local/bin/entrypoint.sh
```

Stop and Commit running container:

```
docker commit [OPTIONS] CONTAINER-ID IMAGE-NAME
```

Use this command to override CMD in Docker file when you build container:

```
docker run -itd IMAGE-NAME /bin/bash -c '/usr/local/bin/entrypoint.sh && /bin/bash'
```
