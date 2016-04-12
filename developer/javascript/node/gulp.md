 
## GULP.JS

Iniciar un proyecto con gulp,
`Concepto basico` Automatizador de tareas, procesos que cargan en memoria.
Este automatizador de tareas está hecho en JavaScript y utiliza el módulo [Stream](https://nodejs.org/api/stream.html) de [Node.js](https://nodejs.org/). 

### 01. Instalar Desarrollo

``` bash
npm install -g gulp
# verificar version
gulp -v
```

### 02. Inicia proyecto
``` bash
npm init
npm install --save-dev gulp
# extra
npm install --save-dev gulp-concat
npm install --save-dev gulp-uglify
```

### 03. configurar en la misma direccion

``` javascript
gulp.task('demojs', function () {

	var paths = [
		'a/a1.js',
		'a/zx/abc/a1.js',
		'a/abc/a4.js',
	];
	gulp.src(paths, {base: "./"})
		.pipe(uglify())
		.pipe(rename({suffix:'.min'}))
		.pipe(gulp.dest("./"));

});
```