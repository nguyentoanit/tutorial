# What is the difference between modify and change in stat command context?
When you use **stat** command with a file. Result of command maybe like this:

```
...
Change 2018-04-04 12:48:39.286252389 +0500
Access 2018-04-04 12:49:14.962243456 +0500
Modify 2018-04-04 12:48:39.234498878 +0500
...
```

So what are the meanings of "modify" and "change" in this context?

There are 3 kind of "timestamps":

- Access - the last time the file was read
- Modify - the last time the file was modified (content has been modified)
- Change - the last time meta data of the file was changed (e.g. permissions)

What is metadata?
Metadata is data that describes other data. Metadata summarizes basic information about data. For example, author, date created and date modified and file size...

# REF:
- https://unix.stackexchange.com/questions/2802/what-is-the-difference-between-modify-and-change-in-stat-command-context
- https://en.wikipedia.org/wiki/Metadata
- https://whatis.techtarget.com/definition/metadata