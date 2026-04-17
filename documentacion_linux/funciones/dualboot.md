Hacer dual boot

## Arch linux

Instalación del paquete necesario
```
sudo pacman -S os-prober
```

Ir al archivo grub
```
sudo vim /etc/default/grub
```

Cambiar el parametro de true a false
```
GRUB_DISABLE_OS_PROBER=false
```

Recargar
```
sudo os-prober
```

```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

```
grep "menuentry " /boot/grub/grub.cfg
```

```
sudo vim /etc/default/grub
```

```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

## Fedora

```
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```

```
sudo grep menuentry /boot/grub2/grub.cfg
```
