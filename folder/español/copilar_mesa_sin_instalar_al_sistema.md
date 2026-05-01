Es para tener el driver mesa de linux en una carpeta y no implementarlo directamente al sistema de linux, ya que estamos tomando de una rama inestable sin haberlo subido de forma estable, la función es solo de pruebas o probarlo a uno mismo sin necesidad de colocar en problema los drivers del sistema en problemas.

## Primer paso
Instalar mesa mediante git
```
git clone https://gitlab.freedesktop.org/mesa/mesa.git
cd mesa
```

### Intel arc Xe

```
rm -rf build/

meson setup build/ \
    -Dprefix=$HOME/Juegos/mesa_test \
    -Dbuildtype=release \
    -Dgallium-drivers=iris \
    -Dvulkan-drivers=intel \
    -Dintel-rt=enabled \
    -Dvideo-codecs=all \
	-Dgles1=disabled \
	-Dgles2=enabled
```

```
ninja -C build/ install
```

Parametro de lanzamiento para iniciar, por ejemplo en steam
```
VK_ICD_FILENAMES=/home/mapachuelo/Juegos/mesa_test/share/vulkan/icd.d/intel_icd.x86_64.json %command%
```


## Dependencias

### Arch linux
```
sudo pacman -S --needed \
    base-devel meson ninja git cmake bc \
    python-mako python-ply python-yaml python-markupsafe python-setuptools \
    libdrm libx11 libxext libxfixes libxcb libxdamage libxshmfence \
    libxrandr libxxf86vm libxv libxrender xcb-util-keysyms xcb-util-wm \
    wayland wayland-protocols libglvnd \
    zlib expat elfutils zstd libunwind lm_sensors \
    llvm clang libclc spirv-llvm-translator spirv-tools glslang \
    vulkan-icd-loader vulkan-headers \
    libva libva-utils libvdpau libvdpau-va-gl \
    bison flex valgrind
```


