## Common ES6 Syntaxs
### Function
#### Default function parameters
In ES6, a function allows the parameters to be initialized with default values, if no values are passed to it or it is undefined. The same is illustrated in the following code.
```
function add(a, b = 1) {
   return a+b;
}
console.log(add(4))
// Result: 5
```
The parameter’s default value will be overwritten if the function passes a value explicitly.
```
function add(a, b = 1) {
   return a + b;
}
console.log(add(4,2))
// Result: 6
```

#### Rest Parameters
Rest parameters doesn’t restrict the number of values that you can pass to a function. However, the values passed must all be of the same type. In other words, rest parameters act as placeholders for multiple arguments of the same type.
```
function fun1(...params) {
   console.log(params.length);
}  
fun1();  // 0
fun1(5); // 1
fun1(5, 6, 7); //3
```

#### Anonymous Function
Functions that are not bound to an identifier (function name) are called as anonymous functions.
```
var res = function( [arguments] ) { ... }
```

#### The Function Constructor
The function statement is not the only way to define a new function; you can define your function dynamically using Function() constructor along with the new operator.
```
var variablename = new Function(Arg1, Arg2..., "Function Body");
```

#### Lambda Functions
Lambda refers to anonymous functions in programming. These functions are also called as Arrow functions.

Lambda Function - Anatomy:
- **Parameters** − A function may optionally have parameters.
- **The fat arrow notation/lambda notation** (=>): It is also called as the goes to operator.
- **Statements** − Represents the function’s instruction set.

Lambda Statement:
```
( [param1, parma2,…param n] )=> {       
   //code block
}

var sum = (x,y)=> {
   console.log(x+y)
}
sum(10)
```
