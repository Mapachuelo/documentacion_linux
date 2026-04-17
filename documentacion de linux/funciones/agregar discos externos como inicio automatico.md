#montar discos diferentes y no tener contraseña para que abran con el sistema

lsblk -f
sudo blkid

#copia de seguridad 

sudo cp /etc/fstab /etc/fstab.bak

#editar

sudo vim /etc/fstab
UUID=TU-UUID-AQUI  /mnt/midisco  ext4  defaults,noatime  0 2
UUID=TU-UUID-AQUI /mnt/midisco ntfs-3 uid=1000,gid=1000,rw,user,exec,umask=000 0 0
UUID=AE2496562496217F  /run/media/mapachuelo/T500\040crucial  ntfs3   defaults,uid=1000,gid=1000,dmask=022,fmask=133,exec,force   0   0

#force es para forzar el uso del disco, cuidado, repare que el disco reconozca ntfs3 y debe ser mediante windows, en mí caso no me deja porque apague forzado el computador, pero si es por otrocaso es mejor no utilizarlo

#prueba sin reiniciar

sudo mount -a 
ls /mnt/midisco

AE2496562496217F 

#no tener espacios al colocar nombre del disco, rompe todo el sistema de linux

#para arreglar el disco y que linux lo reconozca, ya que a veces si forzamos el cierre de linux el disco da errores y para arreglarlo es con windows con 
chkdsk D: /f

#"chkdsk" va ser el disco y  "D:" el tipo de letra de la unidad y siempre tener "/f" para arreglarlo, un ejemplo diferente es

chkdsk A: /f

#letra del disco que tenga asignado y así nos evitamos el force en fstab en linux 

UUID=B0D6164DD61613E6  /home/mapachuelo/Disco  ntfs3  defaults,uid=1000,gid=1000,dmask=022,fmask=133,exec  0  0

#solución optima arreglando para jugar

UUID=TU-UUID-AQUI /mnt/midisco ntfs3 uid=1000,gid=1000,rw,user,exec,umask=000 0 0
