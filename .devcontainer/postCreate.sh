#!/bin/bash
set -e

# Actualizamos el entorno
sudo apt update && sudo apt install -y \
  git zip unzip openjdk-17-jdk libncurses5 libstdc++6 \
  zlib1g-dev libffi-dev libssl-dev \
  libjpeg-dev libfreetype6-dev \
  python3-pip libgl1-mesa-dev libgles2-mesa-dev xclip \
  libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev \
  libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev \
  libtiff-dev libpq-dev libx11-dev libxrandr-dev libxss-dev libxi-dev

# Instala pipenv o virtualenv si prefieres
pip install --upgrade pip setuptools Cython virtualenv
pip install kivy buildozer

# Android SDK y NDK los descargará Buildozer
