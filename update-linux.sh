#!/bin/bash

echo "Päivitetään järjestelmä pacmanilla..."
sudo pacman -Syu

echo "Päivitetään AUR-paketit yay:lla..."
yay -Syu

echo "Poistetaan tarpeettomat paketit..."
sudo pacman -Rns $(pacman -Qdtq) 2>/dev/null || echo "Ei poistettavia paketteja."

echo "Päivitys valmis!"
