cp misc/config.ini.debian /opt/ogon/etc/ogon/config.ini
sudo ln -s /opt/ogon/etc/dbus-1/system.d/ogon.SessionManager.conf /etc/dbus-1/system.d/
sudo service dbus reload
sudo cp misc/pam.d/ogon.debian /etc/pam.d/ogon
sudo cp misc/ogon-rdp-server.service /etc/systemd/system
sudo cp misc/ogon-session-manager.service /etc/systemd/system
sudo systemctl daemon-reload
mkdir -p /opt/ogon/var/run
sudo systemctl enable ogon-rdp-server
sudo systemctl start ogon-rdp-server