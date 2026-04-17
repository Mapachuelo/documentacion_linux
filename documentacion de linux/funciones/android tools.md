//------ // ----- entrar al sistema de android //----------- // 
# instalar android-tools
sudo pacman -Syu android-tools

#dar permisos de acceso y en celular aceptar, se necesita depuración por usb activada en opciones de desarrollador

adb devices

#entrar dentro del celular 

adb shell

# este commando es para decidir donde dejar descargado las aplicaciones del celular 

adb shell settings put global default_install_location 1

# tiene diferentes numeros, el "0" es para automatico, el "1" es del almacenamiento interno y el "2" para el sd card  

# para saber que opción tiene es con 

pm get-install-location

# ver aplicaciones instaladas del sistema

adb shell pm list packages -3

# ver sistema de volumenes del celular

sm list-volumes all 
