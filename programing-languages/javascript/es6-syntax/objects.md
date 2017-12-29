## Common ES6 Syntaxs
### Objects
#### Object Initializers
In ES6, assigning a property value that matches a property name, you can omit the property value.
```
var foo = 'bar'
var baz = { foo }
console.log(baz.foo) //bar
```
Following is the ES5 equivalent of the above code.
```
var foo = 'bar'
var baz = { foo:foo }
console.log(baz.foo) //bar
```

#### The Object() Constructor
JavaScript provides a special constructor function called Object() to build the object.
Following is the syntax for defining an object:
```
var obj_name = new Object();
obj_name.property = value;    
OR             
obj_name["key"] = value
```

#### Constructor Function
An object can be created using the following two steps −

**Step 1** − Define the object type by writing a constructor function. Following is the syntax for the same.
```
function function_name() {
   this.property_name = value
}
```
The **this** keyword refers to the current object in use and defines the object's property.

**Step 2** − Create an instance of the object with the new syntax.
The new keyword invokes the function constructor and initializes the function's property keys.
```
function Car() {
   this.make = "Ford"
   this.model = "F123"
}  
var obj = new Car()
console.log(obj.make)
console.log(obj.model)
```

#### The Object.create Method
Objects can also be created using the Object.create() method. It allows you to create the prototype for the object you want, without having to define a constructor function.
```
var roles = {
   type: "Admin", // Default value of properties
   displayType : function() {  
      // Method which will display type of role
      console.log(this.type);
   }
}  
// Create new role type called super_role
var super_role = Object.create(roles);
super_role.displayType(); // Output:Admin  

// Create new role type called Guest
var guest_role = Object.create(roles);
guest_role.type = "Guest";
guest_role.displayType(); // Output:Guest
```

#### The Object.assign() Function
The Object.assign() method is used to copy the values of all enumerable own properties from one or more source objects to a target object. It will return the target object.
```
Object.assign(target, ...sources)
```

Example − Cloning an Object
```
"use strict"
var det = { name:"Tom", ID:"E1001" };
var copy = Object.assign({}, det);
console.log(copy);  
for (let val in copy) {
   console.log(copy[val])
}
```

Example − Merging Objects
```
var o1 = { a: 10 };
var o2 = { b: 20 };
var o3 = { c: 30 };
var obj = Object.assign(o1, o2, o3);
console.log(obj);  
console.log(o1);
```

#### Deleting Properties
You can remove a property by using the **delete** operator. The following code shows how to remove a property.

```
// Creates a new object, myobj, with two properties, a and b.
var myobj = new Object;
myobj.a = 5;
myobj.b = 12;

// Removes the ‘a’ property
delete myobj.a;
console.log ("a" in myobj) // yields "false"
```

#### Comparing Objects
In JavaScript, objects are a reference type. Two distinct objects are never equal, even if they have the same properties. This is because, they point to a completely different memory address. Only those objects that share a common reference yields true on comparison.

Example 1 − Different Object References
```
var val1 = {name: "Tom"};
var val2 = {name: "Tom"};
console.log(val1 == val2)  // return false
console.log(val1 === val2)  // return false
```

Example 2 − Single Object Reference
```
var val1 = {name: "Tom"};
var val2 = val1  

console.log(val1 == val2) // return true
console.log(val1 === val2) // return true
```
In the above example, the contents in val1 are assigned to val2, i.e. the reference of the properties in val1 are shared with val2. Since, the objects now share the reference to the property, the equality operator will return true for two distinct objects that refer to two different memory addresses. Hence on comparison for equality, the operator will return false.

#### Object De-structuring
The term destructuring refers to breaking up the structure of an entity. The destructuring assignment syntax in JavaScript makes it possible to extract data from arrays or objects into distinct variables.
```
var emp = { name: 'John', Id: 3 }
var {name, Id} = emp
console.log(name) //John
console.log(Id) //3
```
