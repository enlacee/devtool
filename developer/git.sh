# ssh key generate
ssh-keygen
ssh-add
# step1 : https://help.github.com/articles/generating-ssh-keys/
# bug : https://help.github.com/articles/error-agent-admitted-failure-to-sign/


# basic : editor gir
git config --global user.name "Anibal Copitan"
git config --global user.email johndoe@example.com
git config --global color.ui true
git config --global core.editor vim
# cambiar nombre y correo por archivo
vim ~/.gitconfig

# ver las configuraciones echas
git config -l
git config --list

# omitir de permisos git : How do I make Git ignore file mode (chmod) changes?
git config core.fileMode false
git config --global core.filemode false
# configurar solo una vez
git -c core.fileMode=false diff

# Set a new remote
git remote add origin https://github.com/user/repo.git
git remote -v
gir remote rename remoteAntes remoteDespues
# change remote
git remote set-url origin git@github.com:enlacee/chamilo-lms.git
# cambiar origin ()
git remote rm origin
git remote add origin git@github.com:enlacee/chamilo-lms.git

# crear y cambiar de rama
git checkout -b 7683-1
git checkout HEAD index.html
# checkout de un archivo
git checkout HASH file.html
# pasar tus cambios a otro lado - y aplicar nuevamente
git stash
git stash save # o comentat git stash save "comentario"
git stash show # ver cambios actuales
git stash apply 
git stash list # ver numero de cambios termporales guardados

git stash pop # remueve el stash and apply changes in TOP.
git stash clean
git stash branch nuevaramaStash # crea una rama apartir del stash


git push --all
git push --tags

# Deshace todos los cambios actuales hasta el ultimo commit
git reset --hard
# retornar al commit anterior (SNAPSHOT commit)
git reset --hard
git reset --hard HEAD~3
git reset --hard f414f31
git reset --hard ORIG_HEAD

# retornar a  al cambio del anterior commit sin tocar el head,
# dandote la opcion de hacer checkout
git reset --soft #hash

#git diff
git diff branch1 branch2
# cambiar de nombre
git branch -m newname

#eliminar rama remota de github
git push origin --delete 7160
git push origin : 7160

# cambiar el nombre de rama
git branch -m nombre_rama_anterior nombre_rama_nuevo
# 
git add -u -- ok
git add -a

# remover todo el archivo que  no quieres agregar al HEAD
git clean -f -d
#
git log
git log --grep "palabra_a_buscar"

# see change data by files
git log --stat
# manager commits
git diff #hash1..#hash2 index.html
git diff --stat --sumary #hash8...HEAD
# ignore space one and two
git diff --ingnore-space-change #hash8..HEAD
# description author and changes into commit
git show #hash
# Diferencia actual que hubo (OK)
git show --format=oneline HEAD
git show --format=oneline HEAD^
git show --format=oneline HEAD^^
git show --format=oneline HEAD~3
# ver arborl de master
git ls-tree master
git show #hash(tree,blob,text,other)
# buscar commit por fecha
git log --since="2012-01-01"
git log --until="2012-01-01"
# ver cambios en los archivos con lista de commit
git log --stat
# buscar algo en log (util si estableces patron de nombres)
git log --grep="fix"
#---
# Configuracion : alias en .gitconfig
[alias]
    s = status
# por comando
git config --global alias.a add
git config --global alias.co checkout
git config --global alias.cm commit

# guardar cambios en memoria
git stash
git stash list # lista todo los stash echos
git apply # aplica el ultimo cambio de memoria
# agregar cambios INTERACTIVO
git add -i
# reducir tamaño de .git
git reflog expire --all --expire=now
git gc --prune=now --aggressive

# descargar repositorio sin .git o solo ultimo commit
git clone --depth=1 repositorio.git
wget https://github.com/[user]/[repo]/[branch].zip
