var gulp = require('gulp');
var jade = require('gulp-jade');


gulp.task('default', function() {
  // place code for your default task here
});

gulp.task('jade', function() {
    return gulp.src('client/src/*.jade')
    .pipe(jade({
        pretty: true
    }))
    .pipe(gulp.dest('client/www'))
});
