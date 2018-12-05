# Why should we use password hash?
You should never encrypt passwords, you should only hash them. Encryption implies that you can decrypt the password into a human readable form. You should never do that. Hashing is a one way street and once hashed a password cannot be recovered in human readable form.

Please use PHP's built-in functions password_hash() and password_verify()to handle password security. If you're using a PHP version less than 5.5 you can use the password_hash() compatibility pack. Make sure you don't escape passwords or use any other cleansing mechanism on them before hashing. Doing so changes the password and causes unnecessary additional coding.

# Ref
- https://stackoverflow.com/questions/42120586/password-hashing-php-7