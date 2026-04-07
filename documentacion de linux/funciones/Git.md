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
### Borrar rama remota
```bash
git push origen --delete nombre-de-la-rama
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

## Cambia de rama
Una vez que confirmes que la rama aparece en la lista, puedes moverte a ella.
```
git checkout nombre-de-la-rama
```

**Si la rama solo existe en el remoto:** Al ejecutar el siguiente comando, Git creará automáticamente una copia local que siga a la del servidor:
```
git checkout -t origin/nombre-de-la-rama
```


Errores

fatal: La rama actual arreglos/modulos no tiene una rama upstream.
Para empujar la rama actual y configurar el remoto como upstream, usa

    git push --set-upstream Musync arreglos/modulos

Para hacer que esto pase automáticamente para las ramas que no rastrean
un upstream, mira 'push.autoSetupRemote' en 'git help config'.
