# Set and Get the value of a configuration option
## Set the value of a configuration option

```
// Syntax
string ini_set ( string $varname , string $newvalue )
```

```
// Example
ini_set('memory_limit','16M');
```

## Get the value of a configuration option

```
// Syntax
string ini_get ( string $varname )
```

```
// Example
ini_get('memory_limit');
// Result: 16M
```

## References
- http://php.net/manual/en/function.ini-set.php
- http://php.net/manual/en/function.ini-get.php