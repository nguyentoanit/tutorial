# Why does index.html have priority over index.php?
Apache web server load automatically a index.html file first. 
This is a matter of configuration. 

To change default configuration on Apache, open Apache configuration file an change `DirectoryIndex`:

```
DirectoryIndex index.html index.shtml index.php index.htm default.html Default.htm default.html Default.html default.shtml Default.shtml page1.html index.pl index.cgi index.php3 index.phtml home.htm home.html home.shtml index.wml
```

# Refs:
- https://stackoverflow.com/questions/7873634/why-does-index-html-have-priority-over-index-php/7873648
- 