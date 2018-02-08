# PHP7
## Constant Arrays
Array constants can now be defined using the define() function. In PHP 5.6, they could only be defined using const keyword.

### Example

```
<?php
   //define a array using define function
   define('animals', [
      'dog',
      'cat',
      'bird'
   ]);
   print(animals[1]);
?>
```

Result:

```
cat
```
