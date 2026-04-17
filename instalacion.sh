#!/bin/bash

set -e 

echo "Instalando de paquetes en arch linux"

sudo sed -i '/#Color/a ILoveCandy' /etc/pacman.conf

echo "¿Desea instalar los paquetes de desarrollo automatico? (s/n)"
read -r respuesta

if [[ "$respuesta" == "s" || "$respuesta" == "S" ]]; then

  echo "instalación de red y complementos"
  sudo pacman -S --noconfirm --needed \
  networkmanager dnsmasq wget curl

  sudo systemctl enable NetworkManager
  sudo systemctl start NetworkManager


  echo "Escriba si va hacer instalación de paquetes para intel arc (s/n)"
  read -r respuesta_intel

  if [[ "$respuesta_intel" == "s" || "$respuesta_intel" == "S" ]];
    then
      echo "instalación de paquetes para intel arc"
      sudo pacman -Sy --noconfirm --needed \
      libvdpau-va-gl intel-media-driver mesa \
      vpl-gpu-rt vulkan-intel lib32-mesa lib32-vulkan-intel libva \
      libva-utils intel-compute-runtime intel-gmmlib intel-gpu-tools vulkan-tools \
      mesa-utils clinfo libvpl level-zero-loader level-zero-headers ocl-icd \
      lib32-ocl-icd linux-firmware-intel fwupd vulkan-icd-loader lib32-vulkan-icd-loader \
      vulkan-validation-layers 

      echo 
    else 
      echo "Huvo un error en la instalación de los paquetes para intel arc"
  fi  

    echo "Paquetes de multimedia"
    sudo pacman -S --noconfirm --needed ffmpeg gstreamer gst-libav gst-plugins-good \
    gst-plugins-bad gst-plugins-ugly gst-plugins-base aom dav1d rav1e svt-av1 x264 x265 

    echo "paquetes para xwayland" 
    sudo pacman -S --noconfirm --needed \
    xorg-xwayland xorg-xeyes xorg-xlsclients

    echo "No se instalaran los paquetes de desarrollo automatico"

  echo "¿Desea cambiar de terminal shell de bash a fish ? (s/n)" 
  read -r respuesta_fish

  if [[ "$respuesta_fish" == "s" || "$respuesta_fish" == "S" ]];
    then
      echo "Instalando fish shell"
      sudo pacman -S --noconfirm --needed fish
      chsh -s /usr/bin/fish

    else 
      echo "No se cambiara la terminal shell de bash a fish"
  fi
  
  echo "¿Desea instalar kde plasma desktop environment? (s/n)"
  read -r respuesta_kde

  if [[ "$respuesta_kde" == "s" || "$respuesta_kde" == "S" ]];
    then
      echo "Instalando kde plasma desktop environment"
      sudo pacman -S --noconfirm --needed \
      plasma-desktop plasma-nm plasma-pa kscreen kde-gtk-config breeze breeze-gtk \
      breeze-icons gnome-themes-extra kwallet-pam spectacle filelight
    else 
      echo "No se instalara kde plasma desktop environment"
  fi

  echo "instalación de paquetes de desarrollo automatico finalizada"
  
  sudo pacman -S --noconfirm --needed \
  base-devel git less vlc-plugins-all vlc obs-studio gwenview ffmpegthumbs \
  scrcpy android-tools kdeconnect ark unrar zip unzip xclip xsel lact mangohud \
  lib32-mangohud gamemode gamescope steam noto-fonts-cjk goverlay krita fastfetch \
  prismlauncher ntfs-3g gparted drawio-desktop opentoonz libresprite alsa-scarlett-gui \
  easyeffects reaper flatpak

  echo "Desea instalar nvchad ? (s/n)"
  read -r respuesta_nvchad

  if [[ "$respuesta_nvchad" == "s" || "$respuesta_nvchad" == "S" ]];
    then
      echo "Instalando nvchad"
      git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
    else
      echo "No se instalara nvchad"
  fi

  echo "instalación de paquetes flatpak"

  flatpak install --noninteractive --assumeyes \
  com.github.tchx84.Flatseal \
  com.usebottles.bottles \
  com.github.unrud.VideoDownloader \
  com.vysp3r.ProtonPlus \
  it.mijorus.gearlever \
  org.strawberrymusicplayer.strawberry \
  org.onlyoffice.desktopeditors 

  echo " Desea instalar emuladores mediante flatpak ? (s/n)"
  read -r respuesta_emuladores

  if [[ "$respuesta_emuladores" == "s" || "$respuesta_emuladores" == "S" ]];
    then
      echo "Instalando emuladores mediante flatpak"
      flatpak install --noninteractive --assumeyes \
      net.pcsx2.PCSX2 \
      flathub net.rpcs3.RPCS3 \
      net.shadps4.shadPS4 \
      com.heroicgameslauncher.hgl 

    else 
      echo "No se instalaran emuladores mediante flatpak"
  fi



  echo " Tiene para dualboot con windows ? (s/n)"
  read -r respuesta_dualboot

  if [[ "$respuesta_dualboot" == "s" || "$respuesta_dualboot" == "S" ]];
    then
      echo "Instalando paquetes para dualboot con windows"
      sudo pacman -S --noconfirm --needed ntfs-3g os-prober

    else 
      echo "No se instalaran paquetes para dualboot con windows"
  fi

fi
