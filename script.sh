#!/bin/bash

echo "export HISTTIMEFORMAT=\"%d/%m/%y %T \"" >> ~/.bashrc
echo "alias exit=savelog; exit" >> ~/.bashrc
echo "alias grepip='grep -oE \"\b([0-9]{1,3}\.){3}[0-9]{1,3}\b\"'" >> ~/.bashrc
echo "alias grep=\"grep --color\"" >> ~/.bashrc


#echo "alias scr='script scriptlog_`date +\"%Y-%m-%d_%T\"`'" >> ~/.bashrc 
#echo "smart_script" >> ~/.bashrc
cp ./bash_aliases ~/.bash_aliases
echo "[*] History and script in ~/.bashrc set."

cp -v ./tmux.conf ~/.tmux.conf
echo "[*] Tmux conf copied"
mkdir -p ~/.config/terminator/
cp -v ./terminator.rc ~/.config/terminator/config
echo "[*] Terminator settings restored"


#you can get configuration using: `dconf dump /desktop/ibus/`
dconf load /desktop/ibus/ < ibus.dconf
echo "[*]Fix for ctrl+shift+e shortcut in terminator applied"

gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.mutter workspaces-only-on-primary false

gsettings set org.gnome.desktop.wm.preferences num-workspaces 5

echo "5 workspaces set, on both screens."
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Alt>5']"

gsettings set org.gnome.desktop.interface enable-animations "false"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Primary>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Primary>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Primary>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Primary>4']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last "['<Primary>5']"

echo "[*] Shortcuts alt and ctrl set."

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type "'nothing'"
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type "'nothing'"
echo "[*] Automatic suspend disabled."

gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click "true"
echo "[*] Tap to click on touchpad set."
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed "false"
echo "[*] Autohide for dock enabled."
#btw, this stuff is based on `gsettings list-recursively`. You can run this command before changing settings via GUI, change setting, run it again and check the differences with diff.
apt update && apt -y install terminator vim tmux glances git firefox-esr zaproxy && apt upgrade
echo "[*] Stuff installed, upgraded"
