Configuración de Dark Souls 3

Parametros recomendados:


## Mando utilizando gamescope y con mod de fps desbloqueado
Requisito es descargar este mod y extraerlo en la carpeta del juego.
``` 
https://www.nexusmods.com/darksouls3/mods/1545?tab=description
```
Parametro de lanzamiento recomendado:
```
WINEDLLOVERRIDES="d3d11=n,b" PROTON_PREFER_SDL=1 PROTON_NTSYNC=1 gamescope -W 1920 -H 1080 -f -- gamemoderun ENABLE_VKBASALT=1 mangohud %command%
```
## Fps desbloqueado sin utilizar gamescope
Parametro de lanzamiento recomendado:
```
WINEDLLOVERRIDES="d3d11=n,b" gamemoderun %command%
```
## Explicación de los parametros:
- `WINEDLLOVERRIDES="d3d11=n,b"`: Habilitar el mod para desbloquear los fps.
- `PROTON_PREFER_SDL=1`: Forzar a utilizar SDL2 para el manejo del mando con gamescope, sin gamescope es innecesario este parametro.
- `PROTON_NTSYNC=1`: Sincronizar el juego con el monitor para evitar tearing, sin gamescope es innecesario este parametro.
- `gamescope -W 1920 -H 1080 -f --`: Ejecutar el juego dentro de gamescope con una resolución de 1920x1080(A su gusto la resolución).
- `gamemoderun`: Ejecutar el juego con gamemode para mejorar el rendimiento.
- `ENABLE_VKBASALT=1`: Habilitar vkbasalt para mejorar la calidad de imagen.
- `mangohud`: Habilitar mangohud para mostrar el rendimiento del juego y bloquear los fps(solo en mí caso).
