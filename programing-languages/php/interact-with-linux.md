# Interact with Linux
Create a file which contains source code
```
touch myapp
```

Allow this file can execute
```
chmod +x myapp
```

Using this form to interact with Linux
```
#!/usr/bin/php
<?php
//Your code
?>
```

Run file with command
```
./myapp
```

## A few common variable
- $argv: Array of arguments passed to script
- shell_exec function: Execute command via shell and return the complete output as a string

# References
- http://php.net/manual/en/reserved.variables.argv.php
- http://php.net/manual/en/function.shell-exec.php
