## HTML <script> async Attribute
The async attribute is new in HTML5. It is a boolean attribute.
When present, it specifies that the script will be executed asynchronously as soon as it is available.

**Note**: The async attribute is only for external scripts (and should only be used if the src attribute is present).

**Note**: There are several ways an external script can be executed:
- If async is present: The script is executed asynchronously with the rest of the page (the script will be executed while the page continues the parsing)
- If async is not present and defer is present: The script is executed when the page has finished parsing
- If neither async or defer is present: The script is fetched and executed immediately, before the browser continues parsing the page

### Example

```
 <script src="demo_async.js" async></script> 
```

## REFs:
- https://www.w3schools.com/tags/att_script_async.asp
