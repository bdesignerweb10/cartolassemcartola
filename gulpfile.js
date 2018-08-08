var gulp 			= require("gulp");
var sass 			= require("gulp-sass");
var htmlmin 		= require("gulp-htmlmin");
var notify 			= require("gulp-notify");
var concat 			= require("gulp-concat");
var uglify 			= require("gulp-uglify");
var browserSync 	= require("browser-sync").create();
var del 			= require("del");

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

/* Task para mover a pasta img para pasta dist */
 gulp.task("move-img", function() { 
 	return gulp.src('./src/img/**') 
 	.pipe(gulp.dest('./dist/img'))
 });


/* Task para mover a pasta fonts para pasta dist */
 gulp.task("move-fonts", function() { 
 	return gulp.src('./src/components/components-font-awesome/fonts/**') 
 	.pipe(gulp.dest('./dist/fonts'))
 });

/* Task para mover a pasta acts para pasta dist */
 gulp.task("move-acts", function() { 
 	return gulp.src('./src/acts/*.php') 
 	.pipe(gulp.dest('./dist/acts'))
 });

 /* Task para mover a pasta admin para pasta dist */
 gulp.task("move-admin", function() { 
 	return gulp.src('./src/admin/**') 
 	.pipe(gulp.dest('./dist/admin'))
 });

 /* Task para mover a pasta admin/acts para pasta dist */
 /*gulp.task("move-admin-acts", function() { 
 	return gulp.src('./src/admin/acts/*.php') 
 	.pipe(gulp.dest('./dist/admin/acts'))
 });*/

 /* Task para mover a pasta lib para pasta dist */
 gulp.task("move-libs", function() { 
 	return gulp.src('./src/lib/**') 
 	.pipe(gulp.dest('./dist/lib'))
 });

gulp.task("move-htaccess", function() { 
 	return gulp.src('./src/.htaccess') 
 	.pipe(gulp.dest('./dist/'))
 });

gulp.task("php", function() {
	return gulp.src("./src/*.php")
				.pipe(htmlmin({collapseWhitespace: true}))
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/"))
				.pipe(browserSync.stream());
});

gulp.task("php-admin", function() {
	return gulp.src("./src/admin/*.php")
				.pipe(htmlmin({collapseWhitespace: true}))
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/admin/"))
				.pipe(browserSync.stream());
});

gulp.task("php-acts", function() {
	return gulp.src("./src/acts/*.php")
				.pipe(htmlmin({collapseWhitespace: true}))
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/acts/"))
				.pipe(browserSync.stream());
});

gulp.task("php-admin-acts", function() {
	return gulp.src("./src/admin/acts/*.php")
				.pipe(htmlmin({collapseWhitespace: true}))
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/admin/acts/"))
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

/* Task minify js */
gulp.task("admin-js", ['cache:js'], function() {
	return gulp.src("./src/admin/js/app.js")
				.pipe(uglify())
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/admin/js"))
				.pipe(browserSync.stream());
});

/* Task concat js */
gulp.task("concat-js", function() {
	return gulp.src([
					'./src/components/jquery/dist/jquery.js',
					'./src/components/tether/dist/js/tether.js',
					'./src/components/bootstrap/dist/js/bootstrap.js',
					'./src/components/jquery-masks/jquery.mask.min.js',
					'./src/components/bootstrap/bootstrap-toggle.min.js',
					'./src/components/chartjs/Chart.bundle.min.js'
				])
				.pipe(concat("main.js"))
				.pipe(gulp.dest("./dist/js"))

});

/* Task para mover arquivos js para pasta dist/js */
 gulp.task("move-js-calendar", function() { 
 	return gulp.src('./src/js/*.js') 	 
 	.pipe(gulp.dest('./dist/js'))
 });

/* Task para mover a pasta css para pasta dist */
 gulp.task("css", function() { 
	return gulp.src("./src/css/*.css")
				.pipe(htmlmin({collapseWhitespace: true}))
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/css/"))
				.pipe(browserSync.stream());
 });


 /*      COPA DO MUNDO 2018    */

gulp.task("cache:css-copa", function() {
	del("./dist/copa/css/style.css")
});

gulp.task("cache:js-copa", function() {
	del("./dist/copa/js/app.js")
});

gulp.task("cache:js-copa-admin", function() {
	del("./dist/copa/admin/js/app.js")
});

gulp.task("css-copa", function() { 
	return gulp.src("./src/copa/css/*.css")
			   .pipe(htmlmin({collapseWhitespace: true}))
			   .on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
			   .pipe(gulp.dest("./dist/copa/css/"))
			   .pipe(browserSync.stream());
});

gulp.task("js-copa", ['cache:js-copa'], function() {
	return gulp.src("./src/copa/js/app.js")
				.pipe(uglify())
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/copa/js/"))
				.pipe(browserSync.stream());
});

gulp.task("js-copa-admin", ['cache:js-copa-admin'], function() {
	return gulp.src("./src/copa/admin/js/app.js")
				.pipe(uglify())
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/copa/admin/js/"))
				.pipe(browserSync.stream());
});

 gulp.task("move-js-copa", function() { 
 	return gulp.src('./src/copa/js/**') 
 	.pipe(gulp.dest('./dist/copa/js'))
 });

gulp.task("sass-copa", ['cache:css-copa'], function() {
	return gulp.src("./src/copa/scss/style.scss")
				.pipe(sass({outPutStyle: 'compressed'}))
				.on('error', notify.onError({title: "erro scss", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/copa/css"))
				.pipe(browserSync.stream());
});

gulp.task("php-copa", function() {
	return gulp.src("./src/copa/*.php")
				.pipe(htmlmin({collapseWhitespace: true}))
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/copa/"))
				.pipe(browserSync.stream());
});

gulp.task("php-copa-admin", function() {
	return gulp.src("./src/copa/admin/*.php")
				.pipe(htmlmin({collapseWhitespace: true}))
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/copa/admin/"))
				.pipe(browserSync.stream());
});

gulp.task("php-copa-admin-acts", function() {
	return gulp.src("./src/copa/admin/acts/*.php")
				.pipe(htmlmin({collapseWhitespace: true}))
				.on('error', notify.onError({title: "erro js", message: "<%= error.message %>"}))
				.pipe(gulp.dest("./dist/copa/admin/acts"))
				.pipe(browserSync.stream());
});

 gulp.task("move-img-copa", function() { 
 	return gulp.src('./src/copa/img/**') 
 	.pipe(gulp.dest('./dist/copa/img'))
 });

 gulp.task("move-fonts-copa", function() { 
 	return gulp.src('./src/components/components-font-awesome/fonts/**') 
 	.pipe(gulp.dest('./dist/copa/fonts'))
 });

 gulp.task("concat-js-copa", function() {
	return gulp.src([
					'./src/components/jquery/dist/jquery.js',
					'./src/components/tether/dist/js/tether.js',
					'./src/components/bootstrap/dist/js/bootstrap.js',
					'./src/components/jquery-masks/jquery.mask.min.js',
					'./src/components/bootstrap/bootstrap-toggle.min.js',
					'./src/components/chartjs/Chart.bundle.min.js'
				])
				.pipe(concat("main.js"))
				.pipe(gulp.dest("./dist/copa/js"))

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
	gulp.watch("./src/admin/js/*.js", ['admin-js']);
	gulp.watch("./src/css/*.css", ['css']);
	gulp.watch("./src/*.php", ['php']);
	gulp.watch("./src/acts/*.php", ['php-acts']);
	gulp.watch("./src/admin/*.php", ['php-admin']);		
	gulp.watch("./src/admin/acts/*.php", ['php-admin-acts']);
	gulp.watch("./src/admin/js/**/*.js", ['js']);
	gulp.watch("./src/js/**/*.js", ['move-js-calendar']);

	//Copa do mundo 
	gulp.watch("./src/copa/scss/**/*.scss", ['sass-copa']);
	gulp.watch("./src/copa/css/*.css", ['css-copa']);
	gulp.watch("./src/copa/js/**/*.js", ['js-copa']);
	gulp.watch("./src/copa/admin/js/**/*.js", ['js-copa-admin']);
	gulp.watch("./src/copa/*.php", ['php-copa']);
	gulp.watch("./src/copa/admin/*.php", ['php-copa-admin']);
	gulp.watch("./src/copa/admin/acts/*.php", ['php-copa-admin-acts']);
});

gulp.task("default", ["sass", 
					  "css", 
					  "move-htaccess", 
					  "php", 
					  "php-acts", 
					  "php-admin", 
					  "php-admin-acts",
					  "js",
					  "admin-js",
					  "concat-js",
					  "move-img",
					  "move-fonts",
					  "move-admin",
					  "move-acts",
					  "move-libs", 
					  "move-js-calendar",
					  "sass-copa",
					  "move-js-copa",
					  "move-img-copa",
					  "move-fonts-copa",
					  "css-copa",
					  "js-copa",
					  "js-copa-admin",
					  "php-copa",
					  "php-copa-admin",
					  "php-copa-admin-acts",
					  "concat-js-copa",
					  "server"]);