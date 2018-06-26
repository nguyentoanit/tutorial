# PHP7
## Show special characters
### ASCII
We use ```chr``` function to Return characters from different ASCII values

```
$asciiChar = chr(<ascii-code>);
echo "Begin $asciiChar End";
```
### Unicode
PHP 7.0.0 has introduced the "Unicode codepoint escape" syntax.
It's now possible to write Unicode characters easily by using a double-quoted or a heredoc string, without calling any function.

```
$unicodeChar = "\u{1000}";
echo "Begin $unicodeChar End";
```

## Refs
- https://stackoverflow.com/questions/6058394/unicode-character-in-php-string
- https://www.w3schools.com/php/func_string_chr.asp
- https://secure.php.net/manual/en/migration70.new-features.php#migration70.new-features.unicode-codepoint-escape-syntax
