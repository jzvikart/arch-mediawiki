#!/bin/bash
pacman -R --noconfirm linux linux-firmware xfsprogs netctl dhcpcd dbus device-mapper lvm2 systemd cryptsetup libusb mkinitcpio pcmciautils systemd-sysvcompat usbutils hwids pciutils man-db man-pages mdadm sysfsutils iputils iptables iproute2 reiserfsprogs mkinitcpio-busybox s-nail texinfo jfsutils inetutils which pambase pam shadow kbd util-linux thin-provisioning-tools licenses openresolv vi
cd /opt
mkdir mediawiki
cd mediawiki
curl -o - https://releases.wikimedia.org/mediawiki/1.28/mediawiki-1.28.0.tar.gz | tar --strip-components=1 -x -z -f -
pacman -S --noconfirm apache php php-apache imagemagick
yes | pacman -Scc
shopt -s extglob
rm -rf usr/share/{info,man,doc} usr/share/locale/!(en_US) usr/share/i18/locales/!(en_US)
