
Debian
====================
This directory contains files used to package hcapd/hcap-qt
for Debian-based Linux systems. If you compile hcapd/hcap-qt yourself, there are some useful files here.

## hcap: URI support ##


hcap-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install hcap-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your hcapqt binary to `/usr/bin`
and the `../../share/pixmaps/hcap128.png` to `/usr/share/pixmaps`

hcap-qt.protocol (KDE)

