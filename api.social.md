## API REDES SOCIALES

### Facebook

1. Login Javascript (web)
@source [access tockens](https://developers.facebook.com/docs/facebook-login/access-tokens#usertokens)
``` javascript
FB.getLoginStatus(function(response) {
  if (response.status === 'connected') {
    var accessToken = response.authResponse.accessToken;
  }
} );
```

2. Request Like
@source [like](https://developers.facebook.com/docs/reference/opengraph/action-type/og.likes)
``` javascript
/* make the API call */
FB.api(
    "/me/og.likes",
    "POST",
    {
        "object": "http:\/\/samples.ogp.me\/226075010839791"
    },
    function (response) {
      if (response && !response.error) {
        /* handle the result */
      }
    }
);
```
