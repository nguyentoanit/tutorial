# PHP7
## Filtered unserialize()
PHP 7 introduces Filtered unserialize() function to provide better security when unserializing objects on untrusted data. It prevents possible code injections and enables the developer to whitelist classes that can be unserialized.

```
<?php
   class MyClass1 { 
      public $obj1prop;   
   }
   class MyClass2 {
      public $obj2prop;
   }

   $obj1 = new MyClass1();
   $obj1->obj1prop = 1;
   $obj2 = new MyClass2();
   $obj2->obj2prop = 2;

   $serializedObj1 = serialize($obj1);
   $serializedObj2 = serialize($obj2);

   // default behaviour that accepts all classes
   // second argument can be ommited.
   // if allowed_classes is passed as false, unserialize converts all objects into __PHP_Incomplete_Class object
   $data = unserialize($serializedObj1 , ["allowed_classes" => true]);

   // converts all objects into __PHP_Incomplete_Class object except those of MyClass1 and MyClass2
   $data2 = unserialize($serializedObj2 , ["allowed_classes" => ["MyClass1", "MyClass2"]]);

   print($data->obj1prop);
   print("<br/>");
   print($data2->obj2prop);
?>
```
Result:

```
1
2
```
