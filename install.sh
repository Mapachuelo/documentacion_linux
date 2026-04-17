#!/bin/bash

set -e 

declare -A OPTIONS=(
    [1]="shell_fish"
    [2]="config_pacman"
    [3]="config_base"
    [4]="packages_intel_arc"
    [5]="packages_multimedia"
    [6]="packeges_xwayland"
    [7]="packeges_kde"
    [8]="packeges_personalized"
    [9]="packeges_nvchad"
    [10]="packeges_flatpak"
    [11]="packeges_dualboot"
)

shell_fish(){
  echo "Instalando de shell en la terminal"
  sudo pacman -S --noconfirm --needed fish
  chsh -s /usr/bin/fish
}

config_pacman(){
  echo "Configurando pacman"
  sudo sed -i '/#Color/a ILoveCandy' /etc/pacman.conf
}

config_base(){
  echo "instalación de red y complementos"
  sudo pacman -S --noconfirm --needed \
  networkmanager dnsmasq wget curl

  sudo systemctl enable NetworkManager
  sudo systemctl start NetworkManager
}

packages_intel_arc(){
  echo "instalación de paquetes para intel arc"
  sudo pacman -Sy --noconfirm --needed \
  libvdpau-va-gl intel-media-driver mesa \
  vpl-gpu-rt vulkan-intel lib32-mesa lib32-vulkan-intel libva \
  libva-utils intel-compute-runtime intel-gmmlib intel-gpu-tools vulkan-tools \
  mesa-utils clinfo libvpl level-zero-loader level-zero-headers ocl-icd \
  lib32-ocl-icd linux-firmware-intel fwupd vulkan-icd-loader lib32-vulkan-icd-loader \
  vulkan-validation-layers 
}

packages_multimedia(){
  echo "Paquetes de multimedia"
  sudo pacman -S --noconfirm --needed ffmpeg gstreamer gst-libav gst-plugins-good \
  gst-plugins-bad gst-plugins-ugly gst-plugins-base aom dav1d rav1e svt-av1 x264 x265 
}

packeges_xwayland(){
  echo "paquetes para xwayland" 
  sudo pacman -S --noconfirm --needed \
  xorg-xwayland xorg-xeyes xorg-xlsclients
}

packeges_kde(){
  echo "paquetes para kde"
  sudo pacman -S --noconfirm --needed \
  plasma-desktop plasma-nm plasma-pa kscreen kde-gtk-config breeze breeze-gtk \
  breeze-icons gnome-themes-extra kwallet-pam spectacle filelight
}

packeges_personalized(){
  echo "paquetes personalizados hechi por mí"
  sudo pacman -S --noconfirm --needed \
  base-devel git less vlc-plugins-all vlc obs-studio gwenview ffmpegthumbs \
  scrcpy android-tools kdeconnect ark unrar zip unzip xclip xsel lact mangohud \
  lib32-mangohud gamemode gamescope steam noto-fonts-cjk goverlay krita fastfetch \
  prismlauncher ntfs-3g gparted drawio-desktop opentoonz libresprite alsa-scarlett-gui \
  easyeffects reaper neovim
}

packeges_nvchad(){
  echo "Instalando nvchad"
  git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
}

packeges_flatpak(){
  echo "Instalando flatpak"
  sudo pacman -S --noconfirm --needed flatpak

  echo "Instalando aplicaciones de flatpak"
  flatpak install --noninteractive --assumeyes \
  com.github.tchx84.Flatseal \
  com.usebottles.bottles \
  com.github.unrud.VideoDownloader \
  com.vysp3r.ProtonPlus \
  it.mijorus.gearlever \
  org.strawberrymusicplayer.strawberry \
  org.onlyoffice.desktopeditors 
}

packeges_dualboot(){
  echo "Instalando paquetes para dualboot"
  sudo pacman -S --noconfirm --needed os-prober ntfs-3g

  echo "Va al directorio "sudo vim /etc/default/grub" y cambia la linea GRUB_DISABLE_OS_PROBER=true por GRUB_DISABLE_OS_PROBER=false"
  echo ""
  echo "recarga con "sudo os-prober""
  echo ""
  echo "ver donde esta el instalación de windows "sudo grub-mkconfig -o /boot/grub/grub.cfg""
  echo ""
  echo "ver la ruta de windows para que inicie automatico "grep "menuentry " /boot/grub/grub.cfg""
}



