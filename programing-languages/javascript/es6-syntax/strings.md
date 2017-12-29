## Common ES6 Syntaxs
### String
#### Template Literals
Template literals are string literals that allow embedded expressions. Templatestrings use back-ticks (\`\`) rather than the single or double quotes. A template string could thus be written as −
```
var greeting = `Hello World!`;
```

String Interpolation and Template literals
Template strings can use placeholders for string substitution using the ${ } syntax, as demonstrated.

Example 1
```
var name = "Brendan";
console.log('Hello, ${name}!'); //Hello, Brendan!
```

Example 2: Template literals and expressions
```
var a = 10;
var b = 10;
console.log(`The sum of ${a} and ${b} is  ${a+b} `); //The sum of 10 and 10 is 20
```

Example 3: Template literals and function expression
```
function fn() { return "Hello World"; }
console.log(`Message: ${fn()} !!`); //Message: Hello World !!
```

Example 4: Multiline Strings and Template Literals
```
var multiLine = `
This is
a string
with multiple
lines`;

console.log(multiLine)
This is
a string
with multiple
line
```

#### String.raw()
ES6 includes the tag function String.raw for raw strings, where backslashes have no special meaning. String.raw enables us to write the backslash as we would in a regular expression literal. Consider the following example:
```
var text =`Hello \n World`
console.log(text)  
/*
Hello
World
*/
var raw_text = String.raw`Hello \n World `
console.log(raw_text)
//Hello \n World
```
