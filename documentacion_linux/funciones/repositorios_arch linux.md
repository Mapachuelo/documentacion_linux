Para agregar lista de servidores de repositorios oficiales de arch linux, la función es mejorar la descarga de paquetes a la hora de instalar o actualizar, los servidores dependen.

## habilitar repositorio multilib

```
sudo vim /etc/pacman.conf
```

y agregar este comando en la parte inferior con otros respositorios

```
sudo vim /etc/pacman.conf
```


```
[multilib]
Include = /etc/pacman.d/mirrorlist
```

Sitio oficial para sacar los enlaces
https://archlinux.org/mirrorlist/?country=EU

Un ejemplo:
```
## Colombia
Server = https://edgeuno-bog2.mm.fcix.net/archlinux/$repo/os/$arch
Server = http://edgeuno-bog2.mm.fcix.net/archlinux/$repo/os/$arch
Server = http://mirrors.udenar.edu.co/archlinux/$repo/os/$arch
Server = https://mirrors.atlas.net.co/archlinux/$repo/os/$arch
Server = http://mirrors.atlas.net.co/archlinux/$repo/os/$arch

## United States
Server = https://mirror.adectra.com/archlinux/$repo/os/$arch
Server = https://mirror.akane.network/archmirror/$repo/os/$arch
Server = https://mirror.arizona.edu/archlinux/$repo/os/$arch
Server = https://arlm.tyzoid.com/$repo/os/$arch
Server = https://mirrors.bloomu.edu/archlinux/$repo/os/$arch
Server = https://arch-mirror.brightlight.today/$repo/os/$arch
Server = https://mirror.us.cdn-perfprod.com/archlinux/$repo/os/$arch
Server = https://us.mirrors.cicku.me/archlinux/$repo/os/$arch
Server = https://mirror.clarkson.edu/archlinux/$repo/os/$arch
Server = https://mirror.colonelhosting.com/archlinux/$repo/os/$arch
```
Los servidores se puede mezclar, recomendarías siempre utilizar los enlaces **https y no **http.

Para agregar los enlaces de los servidores:
```
sudo nvim /etc/pacman.d/mirrorlist
```
puede utilizar nvim o nano o vim, su editor preferido.

Solo ver que servidores tiene:
```
cat /etc/pacman.d/mirrorlist
```
