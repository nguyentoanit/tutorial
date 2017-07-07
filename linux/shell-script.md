# A Shell Script file on Linux
## How to write shell script
Following steps are required to write shell script:
1. Use any editor like vi,vim,nano or mcedit to write shell script.
- Shell cript file start with: 
    ```
        #!/bin/bash
    ```
2. After writing shell script set execute permission for your script:
    ```
        chmod +x your-script-name
    ```
    
    **or**
    
    ```
        chmod 755 your-script-name
    ```
3. Execute your script:
    ```
       bash your-script-name
    ```
   **or**
    ```
       sh your-script-name
    ```
   **or**
    ```
       ./sh your-script-name
    ```

## Comment in shell script file
To comment use `#` operator.

## Display text or value of variable.
Use `echo` command to display text or value of variable.
```
    echo "Hello Shell Script"
```
## How to define User defined variables
To define UDV use following syntax:
```
    variable name=value
```
**Example:**
```
    name="Toan"
    echo "My name is $name"
```
**Result:**
```
    My name is Toan
```
## Shell Arithmetic
Use to perform arithmetic operations.
```
    expr 1 + 3
    expr 2 - 1
    expr 10 / 2
    expr 20 % 3
```
## More about Quotes
Qoutes  | Name | Meaning
------------- | ------------- | ---
"  | Double quotes | Anything enclose in double quotes removed meaning of that characters (except \ and $).
'  | Single quotes | Enclosed in single quotes remains unchanged
` | Back quotes | To execute command
**Example**
```
    echo "Today is date" 
    echo "Today is `date`" 
```
**Result**
```
    Today is date
    Today is Fri Jul  7 07:38:46 UTC 2017
```
## The read Statement
Use to get input (data from user) from keyboard and store (data) to variable.
**Example**
```
    echo "Your name is:"
    read name
    echo "Hello $name! How are you?"
```
## Wild cards (Filename Shorthand or meta Characters)
Wild card /Shorthand | Meaning | Example
--|--|--
*|Matches any string or group of characters.| ls * #will show all files
|||ls *.c   #will show all files having extension .c
?|Matches any single character.|ls ? #will show all files whose names are 1 character long 
[...]|Matches any one of the enclosed characters| ls [abc]*  #will show all files beginning with letters a,b,c
## More command on one command line
Use `;` operator to run two command with one command line.
```
    command1;command2
```
## Access command line argument in script
`Please note at a time such 9 arguments can be used from $1..$9` and $0 is script name.
```
    echo "Total number of command line argument are $#"
    echo "$0 is script name"
    echo "$1 is first argument"
    echo "$2 is second argument"
    echo "All of them are :- $* or $@"
```
**Example**
```
    sh demo
    demo Hello World
```
## Redirection of Standard output/input i.e. Input - Output redirection
Mostly all command gives output on screen or take input from keyboard, but in Linux (and in other OSs also) it's possible to send output to file or to read input from file.
**Syntax**
```
    Linux-command > filename
    Linux-command >> filename
    Linux-command < filename
```
1. `>` Redirector Symbol
    To output Linux-commands result (output of command or shell script) to file. Note that if file already exist, it will be overwritten else new file is created.
2. `>>` Redirector Symbol
    To output Linux-commands result (output of command or shell script) to END of file. Note that if file exist , it will be opened and new information/data will be written to END of file, without losing previous information/data, And if file is not exist, then new file is created. For e.g. To send output of date command to already exist file give command
3. `<` Redirector Symbol
    To take input to Linux-command from file instead of key-board. For e.g. To take input for cat command give.
    In another case, you may want a file to be the input for a command that normally wouldn't accept a file as an option. This redirecting of input is done using the "<" (less-than symbol) operator.
4. Combining redirections
The following example combines input and output redirection.
    **Example**
    ```
        cat < test > file.content
    ```
    It will get content of test file and write to file.content file
## Pipes
A pipe is a way to connect the output of one program to the input of another program without any temporary file.
**Syntax**
```
    command1 | command2
```

## What is Processes
Process is kind of program or task carried out by your PC. Process defined as:
- **A process is program (command given by user) to perform specific Job. In Linux when you start process, it gives a number to process (called PID or process-id), PID starts from 0 to 65535.**
- **An instance of running command is called process and the number printed by shell is called process-id (PID), this PID can be use to refer specific running process.**