# PHP7
## Null Coalescing Operator
In PHP 7, a new feature, **null coalescing operator (??)** has been introduced. It is used to replace the ternary operation in conjunction with isset() function. The Null coalescing operator returns its first operand if it exists and is not NULL; otherwise it returns its second operand.

```
<?php
   // fetch the value of $_GET['user'] and returns 'not passed'
   // if username is not passed
   $username = $_GET['username'] ?? 'not passed';
   print($username);
   print("<br/>");

   // Equivalent code using ternary operator
   $username = isset($_GET['username']) ? $_GET['username'] : 'not passed';
   print($username);
   print("<br/>");
   // Chaining ?? operation
   $username = $_GET['username'] ?? $_POST['username'] ?? 'not passed';
   print($username);
?>
```

Result:

```
not passed
not passed
not passed
```
