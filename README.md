# FedoraReplaceDefaultAppsWithFlatpaks
A script to replace the default package apps in Fedora with their Flatpak counterparts.

Why would you want to do this?  I don't know, but if you do, this script will do it.

Basically this is simple bash script that will first remove all the rpm based applications in a default Fedora install, add Flathub and then install Flatpak versions of all the applications that were just removed.
