Esto es una función de mejorar la calidad de audio en linux, por defecto esta 48000 hz, el tutorial es para gestión de audio pipewire.

## Primer paso
Comprobar si existe 
```
ls -l /usr/share/pipewire/pipewire.conf
```
o ver el contenido dentro si existe
```
cat /usr/share/pipewire/pipewire.conf | grep "default.clock.rate"
```
Si existe vamos al paso 2.

## Segundo paso
Primero debemos crear un archivo para almacenar la copia original
```
mkdir -p ~/.config/pipewire
```
Copiar el archivo original a la carpeta que creamos
```
cp /usr/share/pipewire/pipewire.conf ~/.config/pipewire/
```
y verificamos si existe
```
ls -l ~/.config/pipewire/pipewire.conf
```
Esto se hace porque al momento de actualizar el sistema se borra las configuraciones, por eso nunca se toca los archivos /usr/

## Tercer paso
Edite el archivo con su editor preferido.
```
nvim ~/.config/pipewire/pipewire.conf
```
Buscar la linea ``context.properties = {``  para quitar el comentario ``#``  para habilitar la configuración que estamos creando. se debe verse algo así: 
```
default.clock.rate          = 96000
default.clock.allowed-rates = [ 44100 48000 88200 96000 ]
```
Guardamos los cambios.
### Otras configuraciones
Puedes hacer cambios por ud mismo
por ejemplo
```
default.clock.rate          = 96000
default.clock.allowed-rates = [ 44100 48000 88200 96000 192000 ]
default.clock.quantum       = 1024
default.clock.min-quantum   = 32
default.clock.max-quantum   = 2048
```

## Cuarto paso
Reiniciamos el servidor de audio 
```
systemctl --user restart pipewire pipewire-pulse
```
Si el audio de su juego o navegador no funciona, solo reinicie para ver los cambios.