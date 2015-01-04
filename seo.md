# SEObook : Google SEO Secrets


Este contenido es una recopilacion de tecnicas SEO, que recopile del libro
Google SEO Secret[^1] : author : Dan Sisson

## 1. INTRODUCCION SEO
1ero : preguntarse siempre que le gusta al motor de busqueda google
 - recordar que a google le gustan las personas ciegas

2do : Page rank posicion por mas relevancia e importancia.
incrementar tu pageRank.

Calidad y cantidad de link  hacia otros portales.


* google prefiere sitios antiguos
* google pregiere sitios q se crean nuevos contenidos o actualizan a diario
* google no le gusta link rotos o web caidas "ojo que afecta, puede desaparecer
en la proxima actulaizacion"

## 2. HOW GOOGLE RANKS PAGES

Google se divide en 2 factores

1. On-page (Keywords) : content relevante how, where and when
2. Off-page (links) : calidad de las paginas refers

RELEVANCIA : Keywords por palabras clave buscado en search google egnime.
IMPORTANCIA : Importancia porque otros sitios web lo recomiendan con links.

Goggle indexara tu web, pero solo cuando tengas minimo una pagina que linkee a 
tu web a rankear.

**Cosas que google siempre observara :**

1. Los keywords links, siempre deben tener palbras relacionadas con tu web 
o contenido.
2. El keywords debe ser usadado en el tag <title>
3. El keywords debe ser usado en H1,H2 en el body
4. PageRank mide el numero de links que apuntan a tu web de otros sitios web
5. Las paginas que **contengan al menos 200 palabras** con contenido relevante
el portal tendra mas oportunidad de posicionamiento.
6. A menudo tu contenido web debe ser actualizado, al menos 1 vez al mes.


## 3. DETERMINAR PALABRAS RELEVANTES

    http://www.keyworddiscovery.com/?id=108400
    http://our.affiliatetracking.net/wordtracker/af.cgi?4562

Depues de identificar palabras claves mas buscadas en estas paginas recomendadas.

### PRIMARY KEYWORD PHRASE

* Es recomendable crear categorias de estas
* Ademas incluirlo en tus paginas web y home
* No intente usar palabras simples 'car' usemos palabras clave compuesta de
de 2 palabras 'house plants', 'carros alemanes'

### SECONDARY KEYWORD PHRASES

* palabras relevantes pero que no son buscados frecuentemente
example : 'home plants', 'houseplans'

### ESPECIALIZA TU KEYWORD

Especializa tu publico objetivo, sí la palabra en WordTracker tiene bajos
resultados intereza poco

* Tienes que **competir apartir de 2 palabras claves**, y tambien intentalo
3, 4, 5 esto es mucho mas facil de rankear, ya que otros lo hacen con 2.

### GENERAL KEYWORD STRATEGY

* Lo ideal para cada pagina es no tener mas de 2 diferentes **keyword phrases**
* En cada pagina podrias incluir **Primary Keyword Phrase**
* Para cada product, service, or content de page podrias contener
* La mejor especificacion variacion en tu Primary Keyword Phrase

*Example:*

1. Home page : optimize for “house plans” (primary phrase) and “home plans” 
(best secondary phrase).
2. Country House Plans page:
3. French Country House Plans page: optimizado para un pais en especial.
4. Contact Us page: include the phrase “house plans” several times on the page.
5. About Us page: again, include “house plans” phrase several times on the page
for the same reason as the Contact Us page


## 4. STRUCTURE BY THEME

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


***

[^1]: book escrito en ingles hasta el momento.
[^2]: proceso de rastreo de las paginas que google realiza.