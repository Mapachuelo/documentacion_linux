Montar discos externos que inicien automaticamente con el sistema, la razón es cuando uno necesita acceder al disco externo al inicio se requiere una contraseña, esta es una guía para quitar la contraseña al inicio del sistema para discos externos.

Ver la lista de discos existente en el sistema, con su id, tipo de disco y uso.
```
lsblk -f
```
Ver las particiones de solo id y tipo.
```
sudo blkid
```

Si eres alguien principiante hacer una copia de seguridad.
```
sudo cp /etc/fstab /etc/fstab.bak
```

Ya con todo lo requerido el siguiente paso

## Editar
Edita este directorio que esta el acceso a los discos.
```
sudo vim /etc/fstab
```

Este es un ejemplo a editar y agregar, según el UUID que estaba en la lista de `lsblk -f` debe ser agregado para que el sistema entienda.
- UUID = UUID del disco que quiere agregar según `lsblk -f`.
- / = La ruta que va colocar el disco
- ext4 = depende que tipo de disco va agrega si es btrfs, ntfs, entre otros. Debe tener en cuenta que tipo de disco es.
- defaults = La lista que tipo de requisitos se va utilizar en el disco, si se va comprimir los archivos, saltarse riesgos, entre otros.

Un ejemplo

```
UUID=TU-UUID-AQUI  /mnt/midisco  ext4  defaults,noatime  0 2
```
Un ejemplo en disco ntfs (No recomendable, solo es un ejemplo, se recomienda que el nombre del disco no tenga espacio a la hora de crearse).
```
UUID=AE2496562496217F  /run/media/mapachuelo/T500\040crucial  ntfs3   defaults,uid=1000,gid=1000,dmask=022,fmask=133,exec,force   0   0
```
El comando `force` no es recomendable, ya que se salta problemas que tiene el disco.

Probar sin reiniciar.
```
sudo mount -a 
```

## Recomandaciones

### Disco ext4 ssd
Maximo rendimiento en lectura y escritura (Para computadores modernos).
```
UUID=TU-UUID-AQUI /ruta ext4 defaults,noatime,data=ordered 0 2
```
#### ext4 hdd
Para discos hdd recomendable.
```
UUID=TU-UUID-AQUI /ruta ext4 defaults,noatime,commit=60 0 2
```

### Disco brtfs
Utiliza compresión zstd para ahorrar espacio (Para computadores modernos).
```
UUID=TU-UUID-AQUI /ruta btrfs defaults,noatime,compress=zstd:3,ssd 0 0
```
#### brfs hdd
Recomendable para discos hdd.
```
UUID=TU-UUID-AQUI /ruta defaults,noatime,autodefrag,compress=zstd:1 0 0
```

### Recomendación para disco ntfs 
Para juegos con steam y otras cosas (algunos juegos dan errores de lectura y escritura).
```
UUID=TU-UUID-AQUI /ruta ntfs3 uid=1000,gid=1000,rw,user,exec,umask=000 0 0
```
#### Arreglo disco ntfs
Es necesario ir a windows y abrir la terminal como administrador para arreglar el disco.
"chkdsk" va ser el comando y "D:" el tipo de letra de la unidad y siempre tener "/f" para arreglarlo.
Un ejemplo:
```
chkdsk D: /f
```
La razón es para arreglar el disco y que linux lo reconozca, ya que a veces si forzamos el cierre de linux el disco da errores.
