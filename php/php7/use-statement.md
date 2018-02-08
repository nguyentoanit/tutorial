# PHP7
## use Statement
From PHP7 onwards, a single use statement can be used to import Classes, functions and constants from same namespace instead of multiple use statements.

```
<?php
   // Before PHP 7
   use com\tutorialspoint\ClassA;
   use com\tutorialspoint\ClassB;
   use com\tutorialspoint\ClassC as C;

   use function com\tutorialspoint\fn_a;
   use function com\tutorialspoint\fn_b;
   use function com\tutorialspoint\fn_c;

   use const com\tutorialspoint\ConstA;
   use const com\tutorialspoint\ConstB;
   use const com\tutorialspoint\ConstC;

   // PHP 7+ code
   use com\tutorialspoint\{ClassA, ClassB, ClassC as C};
   use function com\tutorialspoint\{fn_a, fn_b, fn_c};
   use const com\tutorialspoint\{ConstA, ConstB, ConstC};

?>
```
