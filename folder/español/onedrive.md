# Tener onedrive 
Tener onedrive corriendo en segundo plano con descarga automatica.

## Paquete necesario
App de la terminal para conectar con onedrive
``` 
sudo pacman -S --needed rclone 
```
Ya descargado ejecutarlo primero crear la carpeta donde se va alojar los archivos
```
mkdir ~/OneDrive
``` 
Y ya con ello ejecutar el rclone
``` 
rclone config
``` 


Ya configurado sincronizar los archivos para guardarlo en el ordenador
``` 
rclone bisync OneDrive: ~/OneDrive --resync --progress --exclude "Personal Vault/**" --exclude "PersonalVault/**" --exclude "*{.~,tmp,bak}*"
```


## Tenerlo en segundo plano

Crear un archivo en ``.config/systemd/user/`` para los siguientes archivos:

Archivo del servicio ``rclone-onedrive.service``
```
[Unit]
Description=Rclone OneDrive Bisync Service
After=network-online.target
Wants=network-online.target

[Service]
Type=oneshot
# Cambiamos ExecStart para incluir las exclusiones
ExecStart=/usr/bin/rclone bisync OneDrive: %h/OneDrive \
    --config=%h/.config/rclone/rclone.conf \
    --compare size,modtime \
    --slow-hash-sync-only \
    --resilient \
    --exclude "Personal Vault/**" \
    --exclude "PersonalVault/**" \
    --log-file=%h/.cache/rclone/bisync.log \
    --log-level INFO

[Install]
WantedBy=default.target
```

Archivo que va actualizar el serivico ``rclone-onedrive.timer``
```
[Unit]
Description=Timer para sincronizar OneDrive cada 5 minutos

[Timer]
OnBootSec=2min
OnUnitActiveSec=5min
Unit=rclone-onedrive.service

[Install]
WantedBy=timers.target
```
