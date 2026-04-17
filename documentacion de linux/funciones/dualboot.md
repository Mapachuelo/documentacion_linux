
//--------------//----Hacer dual boot----//-------------------------//

#hacer dual boot

sudo pacman -S os-prober
sudo vim /etc/default/grub
GRUB_DISABLE_OS_PROBER=false
sudo os-prober
sudo grub-mkconfig -o /boot/grub/grub.cfg
grep "menuentry " /boot/grub/grub.cfg
sudo vim /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg


//----- fedora ----- //

sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo grep menuentry /boot/grub2/grub.cfg

