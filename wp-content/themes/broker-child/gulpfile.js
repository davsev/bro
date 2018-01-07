var gulp = require('gulp');
var sass = require('gulp-sass');
var uglify = require('gulp-uglify');
var concat = require('gulp-concat');
var watch = require('gulp-watch');
const autoprefixer = require('gulp-autoprefixer');

var browserSync = require('browser-sync').create();

gulp.task('styles', function() {
    return gulp.src('assets/src/sass/*.scss')
        .pipe(sass())
        .pipe(autoprefixer({
            browsers: ['last 2 versions'],
            cascade: false
        }))
        .pipe(gulp.dest('assets/dist/css'))
        .pipe(browserSync.stream());

});

gulp.task('scripts', function() {
    gulp.src('assets/src/js/*.js')
        .pipe(concat('main.js'))
        .pipe(uglify())
        .pipe(gulp.dest('assets/dist/js'));
});

gulp.task('run', ['styles', 'scripts'], function() {
    browserSync.init({
        proxy: "http://127.0.0.1/brok/"
    });
    gulp.watch('assets/src/sass/*.scss', ['styles']);
    gulp.watch('assets/src/js/*.js', ['scripts']);
    gulp.watch('./**/*.php').on('change', browserSync.reload);
});


gulp.task('default', ['run']);