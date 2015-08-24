### documentation fossil
scm : light

#### comand basic
fossil init => init project(directorio del proyecto,save in other path)
fossil clone => clonar del repo central
#### more
fossil info
fossil status
fossil diff

#### clone (abrir desde sitio remoto)
fossil clone /home/anb/Documents/fossil/riotjs
#### open (abrir coneccion directa con el repo central)
fossil open /home/anb/Documents/fossils/riotjs
#### ignore global
fossil ui => settings
#### crear una rama
fossil branch new nuevaram trunk
#### crear una rama privada
fossil branch new privado hotfix --private


### En project
#### Agregando nuevos cambios
fossil add file...
fossil rm file...
fossil addremove file...
### cambiar rama
fossil update anibalprivado

## resetear los cambiaos al ultimo commit
fossil revert

## cambiar de rama en fossil
fossil update mirama
## fossil no seguir archivos
.fossil-settings/ignore-glob
