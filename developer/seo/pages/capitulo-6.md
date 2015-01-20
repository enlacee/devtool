## Capitulo 6 - Linkeando tus paginas para unirlas

En este punto enteremos porque importa que tus paginas estean vinculadas 
en conjunto.

**PageRank** es un valor numero que google establece como una pagina Importante
en la web.

El **PageRank** es determinado por por la cantidad de links entrantes que
apuntan a la pagina.

Cuando una pagina linkea a otra, Este es un efecto llamado `Casting a vote OR
casting por votos`.

A mas enlaces entrantes (votos) haya para una pagina, para google esta
es la pagina mas importante

### Jerarquia de links internos

hay dos principales tipos

1. **Vinculacion Jerarquica** 
Esto consiste cuando uno o mas paginas de tu web apunta a tu HOME considerado
el mas importante que otras,
Las paginas importantes estan siendo vinculadas a partir de todas las otras
paginas, pero no todas las paginas se apuntan entre si.
Esto concentra el pageRank en las paginas mas importantes.

![ 1 vinculacion jerarquica](http://i59.tinypic.com/dddp4l.jpg)


**Solo paginas importantes se linkean entre , y consigue enlaces de otras 
paginas**

2. **Malla de vinculacion**
Es cuando las paginas son consideradas de igual importancia y se enlazan entre 
si para que dividan la importancia en partes iguales.


![2 malla de vinculacion](http://i58.tinypic.com/1252o9l.jpg)

### Mejores practicas para la vinculacion Interna

1. Usar solo texto en los links y si es posible usa el proposito de la
`estructura de link`

2. Usar Keywords en los links text para todos los links.
No uses `click here` or `Home` como texto del link, esto no es relevante.

3. Enlaza desde tu home or `pagina mapeada links *sitemap*`
    * Si tu pagina es pequeña (10 pags) usa links desde tu home.
    * si tu pagina es grande usa **sitemap**, este sitemap funciona como
    el index de tu web y es de gran importancia:
        * Ayuda al crawel de google a encontrar tus paginas rapidamente.
        * mejora la busqueda al encontrar lo necesitas rapido.
        * Ayuda a distribuir el pageRank de tus paginas importantes.

`
TIP: normalmente tu home sera el mas importante, desde tu home no permitas
que salgan links hacia paginas externas que no sean de tu dominio. esto podra
bajar tu PageRank.
`

4. LInk no relevante solo debe regresar al inicio al home.
estas paginas no relevantes son las que no tienen keywords ricos y no contienen
informacion relevante para el visitante, y tu no quieres que estas paginas
reciban mucha puntuacion PageRank que tus paginas importantes.
examples :
    * “Copyright” page
    * “Privacy Policy” Page
    * “Disclaimers” Page
    * “About Us” page
    * “Contact Us” page
    * Order form, shopping cart pages
    * “Link to Us” page
    * “Testimonials” page

Estas paginas debe de concentrar el PageRAnk al home. Recuerda que tu quieres
maximizar tu PageRank para tus paginas importantes.

5. Enlaza a tu pagina a cada otra pagina
`Si tienes muchos links salientes a otros website` y son de calidad, no hay problema mientras no sean tantos, si tienes mas de 100 y no sean de mucha calidad para evitar que tu PageRank disminulle distribulle los enlaces salientes en varias paginas.

6. Enlaza solo entre paginas que estan relacionados por keywords

7. Asegurate de que cada pagina enlace al menos a otra pagina.

8. Siempre usa URL ABSOLUTA para enlazar a tu Home

NOTA: el `wwww`

Uso incorrecto : `index.html`
Uso correcto : `http://www.yourdomain.com/index.html`

Si lo haces de la manera incorrecta google tendra problemas en asignar
un exacto valor PageRank a tu pagina.

9. Usa `Bread Crumb` enlace de navegacion
Efectivamente los links de navegacion  mejoran tus paginas esto provee keywords
rich en los links internos, Y asiste al visitante al visitante a determinar
exactamente en donde esta en el sitio.

Esta popular tecnica llamada `BREAD CRUMMBS`,

NOTA: con esto puedes incrementar  el contenido de enlaces con keywords-rich.

10. Use EL `NOFOLLOW` atributo del enlace `link`
EL `rel="NOFOLLOW"` este atributo en un link usado en blogs y foros para bloquear a **GOOGLE SPIDER** a seguir al link,
Por lo tanto esto bloquea el paso de la puntuacion PageRank. esto reduce los 
link spamming.

Tu puedes usar el atributo NOFOLLOW  para tu ventaja para canalizar solo el
pageRank de las paginas importantes.

    <A HREF="yourpageURL" rel="NOFOLLOW">
