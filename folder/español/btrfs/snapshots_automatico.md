## Interfaz grafica
Paquetes necesarios para snaphots
```
sudo pacman -S --needed btrfsmaintenance snapper btrfs-assistant
```

### Si tiene conflicto con el root

```
sudo umount /.snapshots
```

```
sudo mv /.snapshots /.snapshots_viejo
```

Con eso ya puede crear un snapshot en el root