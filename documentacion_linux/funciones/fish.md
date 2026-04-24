Para crear un comando de tantas lineas para una sola palabra se utiliza funciones acorde a shell de fish.
Un ejemplo como es la forma

```
function Nombre # Nombre del script
    Comando # Comando que quiere guardar
end  # Fin del script
```
Un ejemplo mediante flatpak pero sirve con cualquier cosa

```
function edge
    flatpak run com.microsoft.Edge $argv
end
```
Y de ultimo guardar la funcion creada para fish, ya que una vez que se cierra la terminal con la función sin guardar no existira para otras terminales abiertas.
Un ejemplo 
```
funcsave Nombre #El nombre dado a la función
```
Un ejemplo como es
```
funcsave edge
```
