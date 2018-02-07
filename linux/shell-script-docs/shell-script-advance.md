# Advanced Shell Scripting Commands
## /dev/null - to send unwanted output of program 
**Syntax**
```
    command > /dev/null
```
## Local and Global Shell variable
Normally all our variables are local. Local variable can be used in same shell.
To set local variable you have to use this command.
**Syntax**
```
    variable=value
    echo $variable
    #value
```
To set global variable you have to use export command.
**Syntax**
```
    export variable1, variable2,.....variableN
```
## Conditional execution with && and || operator
### What is exit status?
Every Linux command executed by the shell script or user, has an exit status. The exit status is an integer number. 0 exit status means the command was successful without any errors. A non-zero (1-255 values) exit status means command was failure.
You can use special shell variable called ? to get the exit status of the previously executed command. To print ? variable use the echo command:
**Example**
```
    date  # run date command
    echo $? # print exit status
```

### && and || operator
The control operators are && (read as AND) and || (read as OR). The syntax for AND list is as follows
**Syntax**
```
    command1 && command2
    #command2 is executed if, and only if, command1 returns an exit status of zero.
    #exit status of zero means the command was successful without any errors.
    
    command1 || command2
    #command2 is executed if and only if command1 returns a non-zero exit status.
    #A non-zero (1-255 values) exit status means command was failure.
```
You can use both as follows:
```
    command1 && comamnd2 if exist status is zero || command3 if exit status is non-zero
    #if command1 is executed successfully then shell will run command2 and if command1 is not successful then command3 is executed.
```
## Function
**Syntax**
```
    function-name ( )
    {
        command1
        command2
        .....
        ...
        commandN
        return
    }
```
To call a function with arguments:
```
    function-name $arg1 $arg2
```
The function refers to passed arguments by their position (not by name), that is $1, $2, and so forth. $0 is the name of the script itself.
```
    function-name () {
   echo "Parameter #1 is $1"
}
```
Although bash has a return statement, the only thing you can specify with it is the function's own exit status (a value between 0 and 255, 0 meaning "success"). So return is not what you want.