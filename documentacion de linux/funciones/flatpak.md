
## Buscar paquetes 

```bash
flatpak search 
```

## Borrar paquetes huerfanos
```bash
flatpak uninstall --unused
```
### Usuario
```bash
flatpak uninstall --user --unused
```

## Recomendable
```bash
flatpak update && flatpak uninstall --unused -y
```

## borrar archivos locales
Ruta
```bash
ls ~/.var/app
```
### Borrar carpeta especifica
```bash
rm -rf ~/.var/app/
```
