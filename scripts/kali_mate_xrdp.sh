sudo apt update 
sudo apt -y install mate kali-desktop-mate xrdp
echo "mate-session" > ~/.xsession
XDG_DATA_DIRS=/usr/share/mate:/usr/share/mate:/usr/local/share
XDG_DATA_DIRS=${XDG_DATA_DIRS}:/usr/share:/var/lib/snapd/desktop
cat <<EOF > ~/.xsessionrc
export XDG_SESSION_DESKTOP=mate
export XDG_DATA_DIRS=${XDG_DATA_DIRS}
export XDG_CONFIG_DIRS=/etc/xdg/xdg-mate:/etc/xdg
EOF
sudo systemctl restart xrdp
sudo systemctl enable xrdp

echo "done!"
