'use strict';

var gulp        	= require('gulp');
var concat        	= require('gulp-concat');
var merge        	= require('merge-stream');
var browserSync 	= require('browser-sync').create();
var sass        	= require('gulp-sass');
var plumber 		= require('gulp-plumber');
var uglify 			= require('gulp-uglify');

// Static Server + watching scss/php files
gulp.task('serve', ['sass','js'], () => {

	// browserSync.init({
	// 	server: "."
	// });

	gulp.watch([
				'assets/scss/*.scss',
			    'assets/gulp-js/*.js'
			   ], ['sass','js','serve']);
	// gulp.watch("*.php").on('change', browserSync.reload);
});

// Compile sass into CSS & auto-inject into browsers
gulp.task('sass', () => {
	return gulp.src([
					"assets/plugins/bootstrap/css/bootstrap.min.css",
					"assets/plugins/slick/slick.scss",
					"assets/scss/base.scss",
					"assets/scss/layout.scss",
					"assets/scss/component.scss",
					"assets/scss/utils.scss",
					"assets/scss/responsive.scss"
				   ])
		.pipe(concat('assets/css/styles.css'))
		.pipe(plumber({
			handleError: function(err) {
				console.log(err);
				this.emit('end');
			}
		}))
		.pipe(sass({outputStyle : 'expanded'}))
		.pipe(gulp.dest("./"))
		.pipe(browserSync.stream());
});

gulp.task('js', () => {
	return gulp.src([
					'assets/plugins/jquery/js/jquery.js',
					'assets/plugins/jquery/js/jquery-ui.js',
					'assets/plugins/bootstrap/js/bootstrap.min.js',
					'assets/plugins/slick/slick.min.js',
					'assets/gulp-js/*.js'
					])
	.pipe(concat("index.js"))
	.pipe(plumber({
			handleError: function(err) {
				console.log(err);
				this.emit('end');
			}
		}))
	// .pipe(uglify())
	.pipe(gulp.dest('assets/js/'))
	.pipe(browserSync.stream());
});

gulp.task('default', ['serve']);