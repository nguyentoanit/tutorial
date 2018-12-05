# Internet explorer Tips
## <meta http-equiv="X-UA-Compatible" content="IE=edge">
If you are using the X-UA-Compatible META tag you want to place it as close to the top of the page's HEAD as possible. Internet Explorer begins interpreting markup using the latest version. When Internet Explorer encounters the X-UA-Compatible META tag it starts over using the designated version's engine. This is a performance hit because the browser must stop and restart analyzing the content.

## window.location.origin
Internet Explorer does not have access to window.location.origin. window.location.origin is sometimes not working on IE and return `undefined` value

| Property | Google Chrome | IE | Mozilla Firefox | Safari | Opera |
|---|---|---|---|---|---|
| location.origin | Yes | 11 | Yes | Yes | Yes |
| location.protocol | Yes | Yes | Yes | Yes | Yes |
| location.hostname | Yes | Yes | Yes | Yes | Yes |
| location.port | Yes | Yes | Yes | Yes | Yes |

To fix this problem, we use `window.location.protocol` and `window.location.hostname`

```
if (!window.location.origin) {
    window.location.origin = window.location.protocol + "//" + window.location.hostname + (window.location.port ? ':' + window.location.port: '');
}
```
Refs:
- https://tosbourn.com/a-fix-for-window-location-origin-in-internet-explorer/
