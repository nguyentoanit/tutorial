## Common ES6 Syntaxs
### Arrays
#### Array.prototype.find
find lets you iterate through an array and get the first element back that causes the given callback function to return true.
```
var numbers = [1, 2, 3];
var oddNumber = numbers.find((x) => x % 2 == 1);
console.log(oddNumber); // 1
```
Note − The ES5 **filter()** and the ES6 **find()** are not synonymous. Filter always returns an array of matches (and will return multiple matches), find always returns the actual element.

#### Array.prototype.findIndex
**findIndex** behaves similar to find, but instead of returning the element that matched, it returns the index of that element.
```
var numbers = [1, 2, 3];
var oddNumber = numbers.findIndex((x) => x % 2 == 1);
console.log(oddNumber); // 0
```

#### Array.prototype.entries
entries is a function that returns an Array Iterator that can be used to loop through the array’s keys and values. Entries will return an array of arrays, where each child array is an array of [index, value].
```
var numbers = [1, 2, 3];
var val= numbers.entries();
console.log([...val]);
```

#### Array.from
Array.from() enables the creation of a new array from an array like object. The basic functionality of Array.from() is to convert two kinds of values to Arrays:
- Array-like values.
- Iterable values like Set and Map.

```
"use strict"
for (let i of Array.from('hello')) {
   console.log(i)
}

/*
h                               
e                               
l                               
l                               
o
*/
```
#### Array.prototype.keys()
This function returns the array indexes.
```
console.log(Array.from(['a', 'b'].keys())) //[ 0, 1 ]
```

#### Array Traversal using for…in loop
```
"use strict"
var nums = [1001,1002,1003,1004]
for(let j in nums) {
   console.log(nums[j])
}

/*
1001
1002
1003
1004
*/
```

#### Array De-structuring
JavaScript supports de-structuring in the context of an array.
```
var arr = [12,13]
var[x,y] = arr
console.log(x)
console.log(y)

//12
//13
```
