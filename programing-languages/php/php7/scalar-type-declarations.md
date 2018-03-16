# PHP7
## Scalar Type Declarations
In PHP 7, a new feature, Scalar type declarations, has been introduced. Scalar type declaration has two options:
- **coercive** - coercive is default mode and need not to be specified.
- **strict** - strict mode has to explicitly hinted.

Following types for function parameters can be enforced using the above modes:
- int
- float
- bool
- string
- interfaces
- array
- callable

### Example - Coercive Mode

```
<?php
   // Coercive mode
   function sum(int ...$ints) {
      return array_sum($ints);
   }
   print(sum(2, '3', 4.1));
?>
```
Result:

```
9
```
### Example - Strict Mode

```
<?php
   // Strict mode
   declare(strict_types=1);
   function sum(int ...$ints) {
      return array_sum($ints);
   }
   print(sum(2, '3', 4.1));
?>
```

Result:

```
Fatal error: Uncaught TypeError: Argument 2 passed to sum() must be of the type integer, string given, ...
```
