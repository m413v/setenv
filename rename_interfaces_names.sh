#/bin/bash
# this script renames names of network interfaces to old ethX type
if [ "$EUID" -ne 0 ]
  then echo "Please run me as root"
  exit
fi

sed -i '/GRUB_CMDLINE_LINUX=""/c\GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"' /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg

echo "Edit /etc/network/interfaces manually."
