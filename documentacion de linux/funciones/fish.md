//------------//----Hacer funciones en la terminal con fish----//-----------------//

#agregar una aplicación y colocarle un nombre a esa para ejecutar un archivo, por ejemplo microsoft edge mediante flatpak, ya que en kitty se necesita funciones y es lo siguiente
function edge
    flatpak run com.microsoft.Edge $argv
end


#Explicación:
#function edge → defines el comando edge
#flatpak run com.microsoft.Edge $argv → pasa todos los argumentos que escribas después de edge
#end → cierra la función

#guardar preferencia de la funcion en kitty, obligatorio para guardar la función, primero funcsave y después en nombre de la función
funcsave edge

