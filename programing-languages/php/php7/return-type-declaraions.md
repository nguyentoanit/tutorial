# PHP7
## Return Type Declarations

In PHP 7, a new feature, Return type declarations has been introduced. Return type declaration specifies the type of value that a function should return. Following types for return types can be declared.

- int
- float
- bool
- string
- interfaces
- array
- callable

### Example - Valid Return Type

```
<?php
   declare(strict_types = 1);
   function returnIntValue(int $value): int {
      return $value;
   }
   print(returnIntValue(5));
?>
```

Result:

```
5
```
### Example - Invalid Return Type

```
<?php
   declare(strict_types = 1);
   function returnIntValue(int $value): int {
      return $value + 1.0;
   }
   print(returnIntValue(5));
?>
```

Result:

```
Fatal error: Uncaught TypeError: Return value of returnIntValue() must be of the type integer, float returned...
```