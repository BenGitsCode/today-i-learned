# Today I learned...

Today I had to do some research into finding different ways to show content on the same page.  I discovered that if you had a hash after a URL you can then load that with the call `window.location.hash` and it will return whatever comes after the hash, and you can then load that into something like this:

```js
  //supposing www.foo.net/index.html#page3
  if (window.location.hash === "#page3") {
    foo
  }
  else {
  baz
  }
```

**Stack Overflow Sauce [Gareth](https://stackoverflow.com/questions/298503/how-can-you-check-for-a-hash-in-a-url-using-javascript) **
