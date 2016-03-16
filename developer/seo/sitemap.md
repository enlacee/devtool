# SITEMAP

[fuente](https://searchenginewatch.com/sew/how-to/2048706/the-site-map-gateway-optimization)

Podemos crear los sitemaps necesarios, todos estos archivos lo tendremos que subir a: 

[Google Tool Webmaster](https://www.google.com/webmasters/tools)

Ahí agregamos:

* [añadir sitio web](https://ragose.com/todo-sobre-las-herramientas-para-webmaster-de-google/)
* archivo file.xml


### SITEMAP PARA CELULAR

``` xml
 <?xml version="1.0" encoding="UTF-8" ?>
 <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:mobile="http://www.google.com/schemas/sitemap-mobile/1.0">
    <url>
   <loc>http://celular.example.com/artigo100.html</loc>
        <mobile:mobile/>
    </url>
</urlset>
```