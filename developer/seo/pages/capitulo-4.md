## Chapter 4 - Estructura tu sitio correctamente

### STRUCTURE BY THEME

1. Crear pagina debe hablar especificamente de un pais ajustar las palabras
claves para esto.
2. Es bueno crear lista de palabras claves como topico LIST TAGS
3. Es mejor tener 50 paginas con contenido minimo 200 palabras, que tener
2. Paginas con mucho contenido
4. Tener una pagina dedicada al tema, y no solo 'nosotros', 'mision', etc..
5. Mantener la web simple, evitar animaciones, graficos chatarra, Lo mas importante
6. Hacer que el consumidor entienda el mensaje que tu quieres hacer llegar.
7. Rompe las paginas **usando H1 Y H2 como cabeceras** y incluye los KEYWORDS
en estas cabeceras 'ESTO AYUDA A LA MEJOR VISUALIZACION'
8. NO crear paginas con contenido igual o casi igual o parecido. 'google lo PENALIZA'
9. NO duplicar contenido html y pdf xq google los indexa
10. Para evitar duplicado con contenido duplicado con PDF
debes de crear el archivo
**robot.txt** : y definir que directorios seran excluidos del CRAWLING[^2] por 
eso debes denifirn un directorio especial para *PDFs*

### STANDAR PAGES que debés considerar en tu web

Home page

* Your main product, service, or content pages (this is the meat of your site)
* FAQ page(s) (Frequently Asked Questions) or Articles pages
* Sitemap page (links to each page on your site)
* About Us page
* Contact Us page
* Related Links page(s) (discussed later)
* Link to Us page (discussed later)
* Testimonials page
* Copyright, Disclaimers, Privacy Policy page
* Ordering page

### NO PROFUNDICES CON TUS PAGINAS HTML

porque ah google no le gusta profundizar
todo el contenido mejor indexado debe estar en la carpeta principal public root
google no le gusta indexar a carpetas mas profundas maximo utiliza 1 nivel profundidad

### NO ENGRUESES TU PAGINA CON CODIGO

1. Google asigna un tiempo limite al CRAWLING si tienes mucho contenido no seras
indexado totalmente a la primera pasada.
2. Evitamos este problema si el codigo de tu pagina es magra y limpia.
NOTA: Estudios realizados demuestran que por cada SEGUNDO que demora tu pagina
*pierdes el 10% de visitantes*.
3. Intenta no tener mucho codigo que contenido visible.
ya que cuando tienes stylos js en la pagina google demorar mucho tiempo en
encontrar el contenido principal.
ASI que debes de separar js and css en archivos distintos.

    <script language="JavaScript" type="text/javascript" src="YourFile.js"></script>

    <link rel="stylesheet" href="YourFile.css">

4. Google no sigue links
        
    http://www.mysite.com/products.php?id=1&style=a
* Sí tienes paginas dinamicas los procura que `parametros no sean mas de 2`
* Google no sigue link que potencialmente caerán en bucles muy grandes
* Google no sigue link si la url contiene ID session
* No usar en link :&id : id, sessid, pid,
* Simple solucion y mas relevante para google es una pagina estatica
* Solucion alternativa crear un mapeo del sitio links
NOTA : Google no va a volver a rastrear las páginas dinámicas tan a menudo
como páginas estáticas


### KEYWORDS IN FILE NAMES

* Google observa si las palabras claves se utilizan en los archivos, esto influye
en el pagerank.
* Al crear nombre de archivos separemos las palabras con GUION '-' esto
es para que google reconosca la frase.
* Como regla **no usar mas de 2 GUIONES**, de lo contrario lo vera como span 
cerrara la vista.


### MANTENGASE ALEJADO DE IFRAME Y FLASHS

Esto simplemente no tiene propiedades para ser CRAWLING
* Es preferible que si tienes algo de esto, que sea pequeño o enlazarlo con un
link
* Si de todas formas vas ah usar flash dejalo muy claro que lo estas
utilizando con este codigo agrega tus palabras clave tambien aquí.

    <NOEMBED>My keyword-rich content</NOEMBED>


*NOTA:* El tag html `NOEMBED` se utiliza para navegadores que no soportan contenido
enbebido, actualmente los browser mas usados lo soportan incluso el navegador 
android

### About Google Sitemaps

*  Sitemaps es un archivo que lista todas las paginas de tu sitio, cuando tu
contenido cambia o agregas nuevas paginas
* En muchos casos no es necesario si tu pagina web tiene links relacionados unos
a otros ENTONCES ahi google siempre indexara todas tus paginas.
* Pero es buena idea usar este sitemaps para CONTENIDO FLASH y otros parecidos,
ya que sabemos que estos traen problemas de indexacion :s
* Tener en cuenta que `si usted a iniciado session en el programa de GOOGLE Sitemaps
usted esta comprometido a actualizar el archivo MAPA XML` regularmente eso puede 
ser molestoso.