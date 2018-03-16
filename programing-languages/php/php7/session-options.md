# PHP7
## Session Options
From PHP7+, **session_start()** function accepts an array of options to override the session configuration directives set in **php.ini**. These options supports **session.lazy_write**, which is by default on and causes PHP to overwrite any session file if the session data has changed.

Another option added is **read_and_close**, which indicates that the session data should be read and then the session should immediately be closed unchanged. For example, Set **session.cache_limiter** to private and set the flag to close the session immediately after reading it, using the following code snippet.

```
<?php
   session_start([
      'cache_limiter' => 'private',
      'read_and_close' => true,
   ]);
?>
```
