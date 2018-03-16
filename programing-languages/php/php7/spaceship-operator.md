# PHP7
## Spaceship Operator
In PHP 7, a new feature, spaceship operator has been introduced. It is used to compare two expressions. It returns -1, 0 or 1 when first expression is respectively less than, equal to, or greater than second expression.

### Example

```
<?php
   //integer comparison
   print( 1 <=> 1);print("<br/>");
   print( 1 <=> 2);print("<br/>");
   print( 2 <=> 1);print("<br/>");
   print("<br/>");
   //float comparison
   print( 1.5 <=> 1.5);print("<br/>");
   print( 1.5 <=> 2.5);print("<br/>");
   print( 2.5 <=> 1.5);print("<br/>");
   print("<br/>");
   //string comparison
   print( "a" <=> "a");print("<br/>");
   print( "a" <=> "b");print("<br/>");
   print( "b" <=> "a");print("<br/>");
?>
```

Result:

```
0
-1
1

0
-1
1

0
-1
1
```
