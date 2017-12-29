## Common ES6 Syntaxs
### Cookie
#### How does it work?
Your server sends some data to the visitor's browser in the form of a cookie. The browser may accept the cookie. If it does, it is stored as a plain text record on the visitor's hard drive.
Cookies are plain text data record of 5 variable-length fields:
- **Expires** − The date the cookie will expire. If this is blank, the cookie will expire when the visitor quits the browser.
- **Domain** − The domain name of your site.
- **Path** − The path to the directory or web page that sets the cookie. This may be blank, if you want to retrieve the cookie from any directory or page.
- **Secure** − If this field contains the word "secure", then the cookie may only be retrieved with a secure server. If this field is blank, no such restriction exists.
- **Name = Value** − Cookies are set and retrieved in the form of key-value pairs.

Cookies were originally designed for CGI programming. The data contained in a cookie is automatically transmitted between the web browser and the web server, so CGI scripts on the server can read and write cookie values that are stored on the client side.

#### Storing Cookies
The simplest way to create a cookie is to assign a string value to the document.cookie object, which looks like this:
```
"document.cookie = "key1 = value1; key2 = value2; expires = date";
```

#### Reading Cookies
Reading a cookie is just as simple as writing one, because the value of the document.cookie object is the cookie. So you can use this string whenever you want to access the cookie. The document.cookie string will keep a list of name = value pairs separated by semicolons, where the name is the name of a cookie and the value is its string value.You can use strings' split() function to break a string into key and values as shown in the following example.

```
var allcookies  =  document.cookie;  
cookiearray = allcookies.split(';');  
// Now take key value pair out of this array  
 for(var i = 0; i<cookiearray.length; i++) {  
    name  =  cookiearray[i].split('=')[0];  
    value = cookiearray[i].split('=')[1];  
    document.write ("Key is : " + name + " and Value is : " + value);
 }  
```

#### Setting Cookies Expiry Date
You can extend the life of a cookie beyond the current browser session by setting an expiry date and saving the expiry date within the cookie. This can be done by setting the ‘expires’ attribute to a date and time.
```
var now = new Date();  
now.setMonth( now.getMonth() + 1 );  
cookievalue = escape(document.myform.customer.value) + ";"  
document.cookie = "name = " + cookievalue;  
document.cookie = "expires = " + now.toUTCString() + ";"  
document.write ("Setting Cookies : " + "name = " + cookievalue );
```

#### Deleting a Cookie
Sometimes you will want to delete a cookie so that subsequent attempts to read the cookie return nothing. To do this, you just need to set the expiry date to a time in the past. The following example illustrates how to delete a cookie by setting its expiry date to one month behind the current date.
```
var now = new Date();  
now.setMonth( now.getMonth() - 1 );  
cookievalue = escape(document.myform.customer.value) + ";"
document.cookie = "name=" + cookievalue;  
document.cookie = "expires = " + now.toUTCString() + ";"  
document.write("Setting Cookies : " + "name = " + cookievalue );
```
