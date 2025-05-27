#!/bin/bash

echo "export HISTTIMEFORMAT=\"%d/%m/%y %T \"" >> ~/.bashrc
echo "alias grepip='grep -oE \"\b([0-9]{1,3}\.){3}[0-9]{1,3}\b\"'" >> ~/.bashrc
echo "alias grep=\"grep --color\"" >> ~/.bashrc


git clone https://github.com/tmux-plugins/tmux-logging ~/.tmux/tmux-logging/

cp -v ./vimrc ~/.vimrc
echo "[*] Vim conf copied"

cp -v ./tmux.conf ~/.tmux.conf
echo "[*] Tmux conf copied"

mkdir -p ~/.config/terminator/
cp -v ./terminator.rc ~/.config/terminator/config
echo "[*] Terminator settings restored"

#fix for ctrl shift e issue in terminator, neat oneliner  
gsettings set org.freedesktop.ibus.panel.emoji hotkey []

gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.mutter workspaces-only-on-primary false

gsettings set org.gnome.desktop.wm.preferences num-workspaces 9

echo "9 workspaces set, on both screens."
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Alt>5']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Alt>6']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Alt>7']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Alt>8']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Alt>9']"

gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot-clip "['<Shift><Super>s']"

gsettings set org.gnome.desktop.interface enable-animations "true"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Primary>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Primary>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Primary>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Primary>4']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Primary>5']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Primary>6']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Primary>7']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Primary>8']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Primary>9']"

echo "[*] Shortcuts alt and ctrl set."

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type "'nothing'"
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type "'nothing'"
echo "[*] Automatic suspend disabled."

gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click "true"
echo "[*] Tap to click on touchpad set."
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed "false"
echo "[*] Autohide for dock enabled."

