Una guía para tener moonligth y sunchine en el cual el host tenga la pantalla del monitor apagada en linux.
## Dependencias
evdi  
``linux-zen-headers  -->  los haders del kernel que utilices

## ejecutar
hyprctl output create headless "fantasma"
hyprctl monitors

#### Cargar el módulo al arrancar el sistema
Para que el driver evdi esté siempre disponible, crea un archivo de configuración en modules-load.d:
echo "evdi" | sudo tee /etc/modules-load.d/evdi.conf

#### Cargar el módulo manualmente (Solo esta vez)
Ejecuta esto para activar evdi con un dispositivo virtual de inmediato:
sudo modprobe evdi initial_device_count=1

### Creación de ventana
hyprctl output create headless "fantasma"
### Borrar una ventana
hyprctl output remove (Nombre del monitor- se ve con "hyprctl monitors" )
##### Ejemplo
hyprctl output remove HEADLESS-3





kscreen-doctor -o


