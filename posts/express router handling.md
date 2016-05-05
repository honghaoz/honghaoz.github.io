# express router handling

##### Correct case:

```javascript
router.get('/:id', function (req, res, next) {
  console.log('although this matches');
  next();
});

router.get('/:id', function (req, res) {
  console.log('and this matches too');
  res.end();
});

router.param('id', function (req, res, next, value) {
  console.log('CALLED ONLY ONCE');
  next();
});
```
results:
```
CALLED ONLY ONCE
although this matches
and this matches too
GET /test_id 200 1.808 ms - -
```


##### Incorrect case: Missing `next()`:

```javascript
router.get('/:id', function (req, res, next) {
  console.log('although this matches');
  // next();
});

router.get('/:id', function (req, res) {
  console.log('and this matches too');
  res.end();
});

router.param('id', function (req, res, next, value) {
  console.log('CALLED ONLY ONCE');
  next();
});
```
results:
```
CALLED ONLY ONCE
although this matches
```

and request is not finished. This is because `next()` breaks the handling chain.

##### Incorrect case: Extra `next()`:

```javascript
router.get('/:id', function (req, res, next) {
  console.log('although this matches');
  next();
});

router.get('/:id', function (req, res, next) {
  console.log('and this matches too');
  // res.end();
  next();
});

router.param('id', function (req, res, next, value) {
  console.log('CALLED ONLY ONCE');
  next();
});
```
results:
```
CALLED ONLY ONCE
although this matches
and this matches too
GET /test_id 404 20.147 ms - 1040
```

This is because `next()` passes the request to error handling.

##### Extra `param`:
```javascript
router.get('/:id', function (req, res, next) {
  console.log('although this matches');
  next();
});

router.get('/:id', function (req, res, next) {
  console.log('and this matches too');
  res.end();
  // next();
});

router.param('id', function (req, res, next, value) {
  console.log('CALLED ONLY ONCE');
  next(); // Don't miss this
});

router.param('id', function (req, res, next, value) {
  console.log('CALLED ONLY ONCE EXTRA');
  next(); // Don't miss this
});
```

results:
```
CALLED ONLY ONCE
CALLED ONLY ONCE EXTRA
although this matches
and this matches too
GET /test_id 200 1.770 ms - -
```

Missing any `next()` will break the handling chain.