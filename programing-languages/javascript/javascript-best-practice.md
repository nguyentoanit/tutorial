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

Or even worse:

```
var x = new String("John");             
var y = new String("John");
(x == y) // is false because you cannot compare objects. 
```

## Don't Use new Object()
- Use {} instead of new Object()
- Use "" instead of new String()
- Use 0 instead of new Number()
- Use false instead of new Boolean()
- Use [] instead of new Array()
- Use /()/ instead of new RegExp()
- Use function (){} instead of new Function()

```
var x1 = {};           // new object
var x2 = "";           // new primitive string
var x3 = 0;            // new primitive number
var x4 = false;        // new primitive boolean
var x5 = [];           // new array object
var x6 = /()/;         // new regexp object
var x7 = function(){}; // new function object 
```

## Beware of Automatic Type Conversions
Beware that numbers can accidentally be converted to strings or NaN (Not a Number).
JavaScript is loosely typed. A variable can contain different data types, and a variable can change its data type:

```
var x = "Hello";     // typeof x is a string
x = 5;               // changes typeof x to a number 
```
When doing mathematical operations, JavaScript can convert numbers to strings:

```
var x = 5 + 7;       // x.valueOf() is 12,  typeof x is a number
var x = 5 + "7";     // x.valueOf() is 57,  typeof x is a string
var x = "5" + 7;     // x.valueOf() is 57,  typeof x is a string
var x = 5 - 7;       // x.valueOf() is -2,  typeof x is a number
var x = 5 - "7";     // x.valueOf() is -2,  typeof x is a number
var x = "5" - 7;     // x.valueOf() is -2,  typeof x is a number
var x = 5 - "x";     // x.valueOf() is NaN, typeof x is a number
```

Subtracting a string from a string, does not generate an error but returns NaN (Not a Number):

```
"Hello" - "Dolly"    // returns NaN 
```

## Use === Comparison

## Use Parameter Defaults

## End Your Switches with Defaults

## Avoid Using eval()

#Refs:
- https://www.w3schools.com/Js/js_best_practices.asp
