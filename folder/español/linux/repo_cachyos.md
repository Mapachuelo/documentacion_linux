# Sincronizar repositorio cachyos

Si hay errores de cachyos en los repos esta es la forma de solucionarlo:
```
sudo pacman -Syy
sudo pacman -S cachyos-rate-mirrors
```
Y de ultimo para sincronizar los repositorio
```
sudo cachyos-rate-mirrors
```

Nota: No sincronizar repos de arch linux con ``reflector``
