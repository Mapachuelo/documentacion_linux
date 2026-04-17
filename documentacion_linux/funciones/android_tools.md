Tutorial de como acceder del computador al celular mediante android tools
## instalar android-tools

```
sudo pacman -Syu android-tools
```

Dar permisos de acceso y en celular aceptar, se necesita depuración por usb activada en opciones de desarrollador
```
adb devices
```

Entrar dentro del celular 
```
adb shell
```

### Tutorial para cambiar almacenamiento mediante sd card
El paso a paso de dar ordenes al sistema de android de donde se va localizar las aplicaciones.

Este comando es para decidir donde dejar descargado las aplicaciones del celular 
```
adb shell settings put global default_install_location 1
```

Tiene diferentes números, el "0" es para automático, el "1" es del almacenamiento interno y el "2" para el sd card  

Para saber que opción tiene es con 
```
pm get-install-location
```

Ver aplicaciones instaladas del sistema
```
adb shell pm list packages -3
```

ver sistema de volumenes del celular
```
sm list-volumes all 
```