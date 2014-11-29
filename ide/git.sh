# ssh key generate
ssh-keygen
# basic
git config --global user.name "Anibal Copitan"
git config --global user.email johndoe@example.com
git config --global color.ui true
# omitir de permisos git : How do I make Git ignore file mode (chmod) changes?
git config core.fileMode false
git -c core.fileMode=false diff

# Set a new remote
git remote add origin https://github.com/user/repo.git
git remote -v
gir remote rename remoteAntes remoteDespues
# cambiar origin ()
git remote rm origin
git remote add origin git@github.com:enlacee/chamilo-lms.git

# crear y cambiar de rama
git checkout -b 7683-1
git checkout HEAD index.html
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
# retornar al commit anterior (SNAPSHOT commit)
git reset --hard
git reset --hard HEAD~3
git reset --hard f414f31
git reset --hard ORIG_HEAD

# retornar ah al cambio anterior sin tocar el head,
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

