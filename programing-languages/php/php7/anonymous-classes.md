# PHP7
## Anonymous Classes
Anonymous classes can now be defined using new class. Anonymous class can be used in place of a full class definition.

### Example

```
<?php
   interface Logger {
      public function log(string $msg);
   }

   class Application {
      private $logger;

      public function getLogger(): Logger {
         return $this->logger;
      }

      public function setLogger(Logger $logger) {
         $this->logger = $logger;
      }  
   }

   $app = new Application;
   $app->setLogger(new class implements Logger {
      public function log(string $msg) {
         print($msg);
      }
   });

   $app->getLogger()->log("My first Log Message");
?>
```
Result:

```
My first Log Message
```
