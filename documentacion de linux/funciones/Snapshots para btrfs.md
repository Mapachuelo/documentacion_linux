Una guía para hacer snapshots en linux mediante terminal.

## Verificar 
Verifica si esta primero montado el sistema de archivos btrfs con su subvolumenes.
```
sudo mount | grep snapshots
```

## Mirar los subvolumenes
Es para ver cuantos subvolumenes tiene en linux, puede variar si la instalación fue manual o 
automatica
```
sudo btrfs subvolume list /
````

Un ejemplo de ello
```
sudo btrfs subvolume list /
@        -> sistema
@home    -> home
````

Va depender de la persona si fue manual
```
sudo btrfs subvolume list /
ID 256 gen 4453 top level 5 path @
ID 257 gen 4331 top level 5 path @cache
ID 258 gen 4454 top level 5 path @home
ID 259 gen 4454 top level 5 path @log
ID 260 gen 4418 top level 5 path @snapshots
```


## Crear un snapshots
Se muestra como se crea un snapshots.
````
sudo btrfs subvolume snapshot / /.snapshots/root-$(date +%Y-%m-%d-%H%M)
````  
 
 La ruta de la raíz que va crear
 `sudo btrfs subvolume snapshot /

El nombre que le va colocar 
``/.snapshots/root-$(date +%Y-%m-%d-%H%M)
Con sus datos de año, mes, día y hora

## Borrar un snapshots
Primero debe ver la ruta que ha creado un snapshots.
```
ls /.snapshots
```

o con 
```
sudo btrfs subvolume list /.snapshots
```

Ya teniendo identificado que snapshots se va a borrar.
```
sudo btrfs subvolume delete /.snapshots/ ruta que va borrar
```

Confirmar que se haya borrado
```
ls /.snapshots
```
o con:
```
sudo btrfs subvolume list /.snapshots
```

