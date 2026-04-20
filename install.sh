#!/bin/bash

set -e 

cat << "EOF"
|| -- instalación de paquetes en arch linux -- ||
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠤⢤⡀⠀⢀⡤⠒⠢⣀⡠⠴⠒⢂⣠⡽⢧⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠊⠁⠀⠀⠀⠈⠓⠁⠀⠀⠀⠀⢠⣴⣾⣿⣟⣁⢸⡇⠀⠀
⣀⠀⠠⠤⠤⠔⠒⠒⠛⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠈⠻⣤⢶⡭⠟⢻⡇⠀⠀
⣧⠤⠖⣲⣖⣒⡶⢶⣶⠂⠀⠀⠀⠀⢀⣀⣀⡐⠲⠬⠛⠉⠀⠀⠈⢶⣯⣦⣸⡇⠀⠀
⢹⣆⡾⠟⡷⢋⡥⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡀⣀⠀⢠⠀⠈⠻⡽⡻⠁⠀⠀
⠈⢿⡀⣼⡾⢿⢳⠃⠀⠀⠀⡀⠀⡀⠀⡄⣴⣠⣇⡟⣷⣼⠗⠒⠓⠤⣀⠘⢆⠀⠀⠀
⠀⠈⢟⢏⠀⣿⡇⠀⠀⠀⣴⡇⣼⣀⠼⠷⣻⣏⣿⡞⠁⣿⣆⠀⠀⠀⠈⠣⣄⣣⡀⠀
⠀⠀⠀⢳⠽⠟⡃⠀⠀⣸⡿⢺⣷⡀⠀⠀⠀⠙⢾⠀⠀⠹⣿⡄⠀⠀⢀⣶⡌⢟⠿⣄
⠀⠀⠀⡎⣠⣾⡇⠀⢰⡻⠁⠈⣿⣧⠀⠀⠀⠀⣸⠣⣄⣀⠹⢇⣀⠴⠟⡏⠘⢎⢆⠀
⠀⠀⡼⠿⢻⣿⠁⢠⠇⢣⡀⠀⠘⣿⠀⠀⣀⠴⠁⠀⠀⠈⢹⠉⠀⢀⣿⡷⢄⣨⣿⡄
⠀⠀⠀⠀⣸⠿⠒⠛⠒⠴⣿⡖⢤⠚⠒⠉⢣⡀⠀⡴⠓⠂⠚⠀⢠⣾⠇⢸⠀⠉⠻⠇
⠀⠀⢀⡜⠁⠀⠀⠀⠰⡀⠈⢿⡮⣗⢄⡀⠀⠀⠁⠀⠀⢀⣠⢾⣿⠃⠑⢾⠀⠀⠀⠀
⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⢸⣡⢻⣹⣿⡗⢶⡶⠲⣾⣿⠛⢲⡽⣀⠀⠀⠀⠀⠀⠀
⠀⠀⢸⣆⠀⠀⠀⠀⠀⠀⢀⠾⡟⠻⣧⠙⣎⠙⠢⢤⡼⠋⠀⠰⡇⠈⠑⢤⡀⠀⠀⠀
⠀⠀⠀⠱⢝⡒⠠⠤⠤⣴⡛⠒⡟⠀⠈⠂⣸⠀⠀⠀⠀⠀⠀⠀⢏⣳⡤⠀⠘⡆⠀⠀
⠀⠀⠀⠀⠀⠉⠀⠀⠉⠱⡌⣹⣃⣠⣴⠾⢽⡀⠀⠀⠀⠀⠀⠀⢸⠏⢀⣀⣼⠃⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠁⠘⡀⠀⣏⠀⠀⠀⠀⠀⠀⢸⡀⢀⠈⢃⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣇⠀⢸⡆⠀⠀⠀⠀⠀⣠⡇⠀⠁⢸⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢺⣏⣿⣿⣿⣿⣿⣿⣷⣶⣶⣾⣿⣇⣀⣠⡞⠀⠀⠀
EOF

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
  sudo pacman -S --noconfirm --needed \
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
  breeze-icons gnome-themes-extra kwallet-pam spectacle filelight partitionmanager 
}

packeges_personalized(){
  echo "paquetes personalizados hechi por mí"
  sudo pacman -S --noconfirm --needed \
  base-devel git less vlc-plugins-all vlc obs-studio gwenview ffmpegthumbs \
  scrcpy android-tools kdeconnect ark unrar zip unzip xclip xsel lact mangohud \
  lib32-mangohud gamemode gamescope steam noto-fonts-cjk goverlay krita fastfetch \
  prismlauncher ntfs-3g gparted drawio-desktop opentoonz libresprite alsa-scarlett-gui \
  easyeffects reaper neovim obsidian thunderbird podman podman-compose docker docker-compose \
  podman-desktop btop nvtop musescore
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
  org.onlyoffice.desktopeditors \
  net.pcsx2.PCSX2 \
  flathub net.rpcs3.RPCS3 \
  net.shadps4.shadPS4 

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
  echo "edita el archivo "sudo vim /etc/default/grub" y cambia la linea GRUB_DEFAULT=0 por GRUB_DEFAULT="Windows 11 (loader) (on /dev/sda1)""
  echo "Recarga para aplicar los cambios "sudo grub-mkconfig -o /boot/grub/grub.cfg""
}

echo "¿Cómo desea realizar la instalación?"
echo "1) Automática (Instala todo por defecto)"
echo "2) Manual (Elegir qué componentes instalar)"
read -p "Seleccione una opción [1-2]: " modo_inst

if [ "$modo_inst" == "1" ]; then
    echo "Iniciando instalación automática..."
    config_pacman
    config_base
    packages_intel_arc
    packages_multimedia
    packeges_xwayland
    packeges_kde
    packeges_personalized
    packeges_flatpak
    shell_fish
    packeges_dualboot
    echo "Instalación automática completada."

elif [ "$modo_inst" == "2" ]; then
    echo "Iniciando modo manual..."
    
    preguntar() {
        read -p "¿Desea $1? (s/n): " resp
        [[ "$resp" == "s" || "$resp" == "S" ]]
    }

    if preguntar "configurar Pacman (ILoveCandy)"; then config_pacman; fi
    if preguntar "instalar base (NetworkManager/Red)"; then config_base; fi
    if preguntar "instalar drivers Intel Arc"; then packages_intel_arc; fi
    if preguntar "instalar paquetes Multimedia"; then packages_multimedia; fi
    if preguntar "instalar soporte XWayland"; then packeges_xwayland; fi
    if preguntar "instalar KDE Plasma"; then packeges_kde; fi
    if preguntar "instalar tus paquetes personalizados"; then packeges_personalized; fi
    if preguntar "instalar Flatpaks"; then packeges_flatpak; fi
    if preguntar "instalar NvChad (Neovim)"; then packeges_nvchad; fi
    if preguntar "cambiar shell a Fish"; then shell_fish; fi
    if preguntar "configurar Dualboot con Windows"; then packeges_dualboot; fi

else
    echo "Opción no válida. Saliendo."
    exit 1
fi
