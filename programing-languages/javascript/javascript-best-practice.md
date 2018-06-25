# JavaScript Best Practices

## Summary
Avoid global variables,  avoid new,  avoid  ==,  avoid eval()

## Avoid Global Variables
Minimize the use of global variables.
This includes all data types, objects, and functions.
Global variables and functions can be overwritten by other scripts.
Use local variables instead, and learn how to use closures. 

## Always Declare Local Variables
All variables used in a function should be declared as local variables.
Local variables must be declared with the var keyword, otherwise they will become global variables.

## Declarations on Top
It is a good coding practice to put all declarations at the top of each script or function.

This will:
- Give cleaner code
- Provide a single place to look for local variables
- Make it easier to avoid unwanted (implied) global variables
- Reduce the possibility of unwanted re-declarations

```
// Declare at the beginning
var firstName, lastName, price, discount, fullPrice;

// Use later
firstName = "John";
lastName = "Doe";

price = 19.90;
discount = 0.10;

fullPrice = price * 100 / discount;
```

This also goes for loop variables:

```
// Declare at the beginning
var i;

// Use later
for (i = 0; i < 5; i++) { 

}
```

## Initialize Variables
It is a good coding practice to initialize variables when you declare them.
This will:
- Give cleaner code
- Provide a single place to initialize variables
- Avoid undefined values

Initializing variables provides an idea of the intended use (and intended data type).

## Never Declare Number, String, or Boolean Objects
Always treat numbers, strings, or booleans as primitive values. Not as objects.
Declaring these types as objects, slows down execution speed, and produces nasty side effects:
```
var x = "John";             
var y = new String("John");
(x === y) // is false because x is a string and y is an object. 
```

## Don't Use new Object()

## Beware of Automatic Type Conversions

## Use === Comparison

## Use Parameter Defaults

## End Your Switches with Defaults

## Avoid Using eval()

#Refs:
- https://www.w3schools.com/Js/js_best_practices.asp
