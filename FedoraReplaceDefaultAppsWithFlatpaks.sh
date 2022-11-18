#!/bin/bash

echo "Adding Flathub.org to your system... needs sudo permissions."
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Most of the below are pretty obvious, but the following aren't:
#
# cheese = Camera app
# boabab = Disk Usage Analyzer
# evince = Document Viewer
#    eog = Image Viewer
#  totem = Videos
echo "Removing applications..."
sudo dnf remove -y gnome-boxes gnome-calculator gnome-calendar gnome-characters cheese gnome-clocks gnome-color-manager gnome-connections gnome-contacts gnome-extensions gnome-logs gnome-font-viewer gnome-maps gnome-text-editor gnome-weather libreoffice-core baobab evince mediawriter firefox eog rhythmbox totem

echo "Installing system updates after application removal..."
sudo dnf update -y

echo "Removing unused items after application removal..."
sudo dnf autoremove -y

echo "Installing Flatpaks..."
flatpak install -y flathub org.gnome.Extensions
flatpak install -y flathub org.gnome.Calendar
flatpak install -y flathub org.gnome.Contacts
flatpak install -y flathub org.gnome.baobab
flatpak install -y flathub org.gnome.Boxes
flatpak install -y flathub org.gnome.Calculator
flatpak install -y flathub org.gnome.Characters
flatpak install -y flathub org.gnome.Cheese
flatpak install -y flathub org.gnome.Clocks
flatpak install -y flathub org.gnome.ColorViewer
flatpak install -y flathub org.gnome.Connections
flatpak install -y flathub org.gnome.Contacts
flatpak install -y flathub org.gnome.eog
flatpak install -y flathub org.gnome.Evince
flatpak install -y flathub org.gnome.Epiphany
flatpak install -y flathub org.gnome.FontManager
flatpak install -y flathub org.gnome.font-viewer
flatpak install -y flathub org.gnome.Logs
flatpak install -y flathub org.gnome.Photos
flatpak install -y flathub org.gnome.Rhythmbox3
flatpak install -y flathub org.gnome.TextEditor
flatpak install -y flathub org.gnome.Totem
flatpak install -y flathub org.gnome.Weather
flatpak install -y flathub org.libreoffice.LibreOffice
flatpak install -y flathub org.fedorajorpoject.MediaWriter
flatpak install -y flathub org.mozilla.firefox

echo "done!"
