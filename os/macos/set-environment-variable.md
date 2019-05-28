Open and Insert an environment variable into `vim ~/.bash_profile`:
```
export VARIABLE_NAME="Variable content"
```

Save file, run command to reload environment variable and reload terminal: `source ~/.bash_profile`

Check environment variable: `printenv | grep VARIABLE_NAME`
