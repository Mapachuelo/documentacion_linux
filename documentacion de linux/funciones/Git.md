### Ver ramas de git
```
git branch
```
### Cambiar a otra rama
```
git switch "nombre de la rama"
```
### Borrar rama existente
```
git branch -D "nombre de la rama"
```
### Para crear una rama nueva y saltar a ella de inmediato:  
```
git switch -c nueva-rama
```
### Limpiar ramas que ya no existen
```
git fetch --all --prune
```
### Actualizar ramas
```
git fetch
```




Errores

fatal: La rama actual arreglos/modulos no tiene una rama upstream.
Para empujar la rama actual y configurar el remoto como upstream, usa

    git push --set-upstream Musync arreglos/modulos

Para hacer que esto pase automáticamente para las ramas que no rastrean
un upstream, mira 'push.autoSetupRemote' en 'git help config'.
