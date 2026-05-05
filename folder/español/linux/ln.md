# Ls en linux

## Enlaces simbolicos

```
ln -s [Archivo original] [Hacer enlace al archivo]
```

Ejemplo 
```
ln -s ~/DS30000.sl2 ~/Disco/Disco_1/Juegos/Steam/steamapps/compatdata/374320/pfx/drive_c/users/steamuser/AppData/Roaming/DarkSoulsIII/011000014575ded9/DS30000.sl2
```
y verifica si los archivos existen

```
ls -l ~/Disco/Disco_1/Juegos/Steam/steamapps/compatdata/374320/pfx/drive_c/users/steamuser/AppData/Roaming/DarkSoulsIII/011000014575ded9/DS30000.sl2
```

Dar permiso al archivo por si no tiene
```
chmod 644 ~/DS30000.sl2
```
