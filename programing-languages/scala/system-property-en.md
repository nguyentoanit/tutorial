# System Property in Java
## What is Properties in Java
Properties are configuration values managed as key/value pairs. In each pair, the key and value are both String values.

To manage properties create instances of [java.util.Properties](https://docs.oracle.com/javase/8/docs/api/java/util/Properties.html)
- loading key/value pairs into a Properties object from a stream
- retrieving a value from its key,
- listing the keys and their values,
- enumerating over the keys, and
- saving the properties to a stream.

## System Properties
The Java platform itself uses a Properties object to maintain its own configuration. The System class maintains a Properties object that describes the configuration of the current working environment. System properties include information about the current user, the current version of the Java runtime, and the character used to separate components of a file path name.

### Reading System Properties in Scala
The System class has two methods used to read system properties: getProperty and getProperties.
```
System.getProperty("path.separator");
```

### Writing System Properties in Scala
To modify the existing set of system properties, use System.setProperties. This method takes a Properties object that has been initialized to contain the properties to be set. This method replaces the entire set of system properties with the new set represented by the Properties object.

setProperties example:
```
val properties = new java.util.Properties()

println(System.getProperty("key")) //null

properties.setProperty("key","value")
System.setProperties(properties)

println(System.getProperty("key")) // value
```

setProperty example:
```
System.setProperty("key", "value")
```

or set Property in CLI Parameter

```
java -jar -Dkey=value /path/to/file.jar
```

# References
- https://docs.oracle.com/javase/tutorial/essential/environment/sysprop.html
- https://docs.oracle.com/javase/8/docs/technotes/tools/windows/java.html
- https://docs.oracle.com/javase/tutorial/essential/environment/properties.html
