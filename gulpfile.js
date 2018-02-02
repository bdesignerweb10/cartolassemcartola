var gulp 			= require("gulp");
var sass 			= require("gulp-sass");
var htmlmin 		= require("gulp-htmlmin");
var notify 			= require("gulp-notify");
var concat 			= require("gulp-concat");
var uglify 			= require("gulp-uglify");
var browserSync = require("browser-sync").create();
var del 				= require("del");

/* Tasks cached */
gulp.task("cache:css", function() {
	del("./dist/css/style.css")
});

gulp.task("cache:js", function() {
	del("./dist/js/app.js")
});

/* Task compile scss to css */
gulp.task("sass", ['cache:css'], function() {
	return gulp.src("./src/scss/style.scss")
				.pipe(sass({outPutStyle: 'compressed'}))
				.on('error', notify.onError({title: "erro scss", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/css"))
				.pipe(browserSync.stream());
});

/* Task para mover a pasta fonts para pasta dist */
 gulp.task("move-fonts", function() { 
 	return gulp.src('./src/components/components-font-awesome/fonts/**') 
 	.pipe(gulp.dest('./dist/fonts'))
 });

/* Task minify html */
gulp.task("php", function() {
	return gulp.src("./src/*.php")
				.pipe(htmlmin({collapseWhitespace: true}))
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/"))
				.pipe(browserSync.stream());
});

/* Task minify js */
gulp.task("js", ['cache:js'], function() {
	return gulp.src("./src/js/app.js")
				.pipe(uglify())
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/js"))
				.pipe(browserSync.stream());
});

/* Task concat js */
gulp.task("concat-js", function() {
	return gulp.src([
					'./src/components/jquery/dist/jquery.js',
					'./src/components/tether/dist/js/tether.js',
					'./src/components/bootstrap/dist/js/bootstrap.js'
				])
				.pipe(concat("main.js"))
				.pipe(gulp.dest("./dist/js"))

});

/* Task server local */
gulp.task("server", function() {
	browserSync.init({
		server: {
			baseDir: "./dist"
		}
	});

	/* Watch */
	gulp.watch("./src/scss/**/*.scss", ['sass']);
	gulp.watch("./src/components/bootstrap/scss/**/*.scss", ['sass']);
	gulp.watch("./src/js/**/*.js", ['js']);
	gulp.watch("./src/*.php", ['php']);
});

gulp.task("default", ["sass", "php", "js", "concat-js","move-fonts", "server"]);











