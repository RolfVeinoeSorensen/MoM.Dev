/*
This file in the main entry point for defining Gulp tasks and using Gulp plugins.
Click here to learn more. http://go.microsoft.com/fwlink/?LinkId=518007
*/

var gulp = require('gulp'),
    rimraf = require('rimraf');

gulp.task('remove-node-folder', function (cb) {
    rimraf('./node_modules', cb);
});

gulp.task("copy-assets", function () {
    gulp.src(["./assets/**/*.*"])
    .pipe(gulp.dest("./MoM/MoM.Web/wwwroot/assets"))
});