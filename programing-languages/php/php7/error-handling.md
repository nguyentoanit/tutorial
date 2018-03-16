# PHP7
## Error Handling
From PHP 7, error handling and reporting has been changed. Instead of reporting errors through the traditional error reporting mechanism used by PHP 5, now most errors are handled by throwing Error exceptions. Similar to exceptions, these Error exceptions bubble up until they reach the first matching catch block. 

If there are no matching blocks, then a default exception handler installed with set_exception_handler() will be called. In case there is no default exception handler, then the exception will be converted to a fatal error and will be handled like a traditional error.

As the Error hierarchy is not extended from Exception, code that uses catch (Exception $e) { ... } blocks to handle uncaught exceptions in PHP 5 will not handle such errors. A catch (Error $e) { ... } block or a set_exception_handler() handler is required to handle fatal errors.

[<img src="https://www.tutorialspoint.com/php7/images/exception_hierarchy.jpg">]()

```
<?php
   class MathOperations {
      protected $n = 10;

      // Try to get the Division by Zero error object and display as Exception
      public function doOperation(): string {
         try {
            $value = $this->n % 0;
            return $value;
         } catch (DivisionByZeroError $e) {
            return $e->getMessage();
         }
      }
   }

   $mathOperationsObj = new MathOperations();
   print($mathOperationsObj->doOperation());
?>
```
