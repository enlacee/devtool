## MODE: COMMMAND
j = hacia abajo (behind down)
k = hacia arriba (behinf up)
l = adelante de la linea
h = atras de la linea
# NAVIGATOR IN TEXT
w = mueve inicio de cada palabra
b = mueve hacia atras inicio de la palabra
e = mueve final de cada palabra
# MOVIMIENTO POR OBJETOS DE TEXTO
( = principio de la frase.
) = final de la frase.
{ = principio del parrafo.
} = final del parrafo.
| = va a la primera columna visible
# MOVIMIENTO LIMITE DE LA PANTALL
H = primera linea de la pantalla (top view terminal)
M = centro de la pantalla (medium view terminal)
L = ultima linea de la pantalla. (low view terminal)
# SIN LIMITES WITH NUMER
3w = mueve 3 posiciciones de palabras
# REPETIR
30i- ESC = inserta 30 veces '-'
# BUSCAR DE CARACTERESEN LINEA (f)
fa = busca la letra (a) en la linea.j
3fa = busca la letra (a) 3 veces.
Fa = busca hacia atras la letra (a).
#
; o , = se busca la siguiente aparacion.
# OPERACIONES BASICAS DE SCROLL
CTRL+U = mueve hacia arriba.
CTRL+D = mueve hacia abajo.
# BUSQUEDA POR palabras
/ palabraAbuscar = busca la palabra hacia adelante. 
? palabraAbuscar = busca la palabra hacdcia atras. 
#inicio y fin de archivo
ALT+GR+ [ ]
# retroceder cambios de edicion 
u = retrocede a estado anterior

## MODE: INSERT
# MOVERSE ENTRE () {} []
% = busca inicio y fin
#
CTRL+G = muestra en que linea estas.
# congiguracion basica de > vim ~/.vimrc
syntax on
set number
set expandtab
set ts=4
set autoident
#HOTKEY
^ = SHIFT+` (costado de la tecla enter +)
$ = SHIFT+4 (numeral)
#eliminar segun patron
ci+' = elimina parrafo que inicie y termine con ''
ct+' = elimina parrafo que inicie y termine con '_'
ci+{ = elimina parrafo o lines de '{' a '}'
d+$ = elimina hasta el final

# vim tutor
vimtutor es
=======
# insert text
a = append text after the cursor (despues del cursor)
A = append text end of the line (al final de la lineak)
i =
I = inicio de la linea
o = desoues 
O = antes
#number line
ESC :#
#copy
yy = copy line
yy = yank
yw = yank word
y$ = yank to end of line
p = put (paste)
P = paste before cursor
dd  = delete cut a line
dw = delete  thw current word
x = delete character
#search and replace
/pattern  = search for pattern
?pattern = search backward of pattern
n = repeat search in same direction
N = repeat search in opposite direction
%s/php/NET/g   = replace all antiguo con nuevo en file
%s/VAR/VARIABLE/gs = replace all antiguo con nuevo  en file eith confirmations.
# working multiples files
:e filename = edit a file multiples