# [gulp](http://gulpjs.com)-modify

> Modify the content of vinyl files with custom callback function.


## Install

```
npm install --save-dev gulp-modify
```


## Example

```js
var gulp = require('gulp');
var modify = require('gulp-modify');

gulp.task('default', function () {
	gulp.src('src/app.ext')
		.pipe(modify({
			fileModifier: function(file, contents) {
      				return 'modified';
    			}
		}))
		.pipe(gulp.dest('dist'));
});
```


## API

### modify(options)

#### options.fileModifier

Type: `callback`
Default: `false`

Function which gets called with `content` of the vinyl file as first parameter.


## License

MIT

Copyright (c) 2014 [efa GmbH](http://efa-gmbh.com/), [Ferdinand Full](https://github.com/medialwerk)
