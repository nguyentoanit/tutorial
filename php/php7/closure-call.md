# PHP7
## Closure::call()
Closure::call() method is added as a shorthand way to temporarily bind an object scope to a closure and invoke it. It is much faster in performance as compared to bindTo of PHP 5.6.

### Example - Pre PHP 7

```
<?php
   class A {
      private $x = 1;
   }

   // Define a closure Pre PHP 7 code
   $getValue = function() {
      return $this->x;
   };

   // Bind a clousure
   $value = $getValue->bindTo(new A, 'A'); 

   print($value());
?>
```
Result:

```
1
```

### Example - PHP 7+

```
<?php
   class A {
      private $x = 1;
   }

   // PHP 7+ code, Define
   $value = function() {
      return $this->x;
   };

   print($value->call(new A));
?>
```
Result:

```
1
```
