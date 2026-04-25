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

