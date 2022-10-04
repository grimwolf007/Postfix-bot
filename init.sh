# Postfix setup
sudo apt update
sudo DEBIAN_PRIORITY=low apt install postfix
# blue.invalid
# john
# Default
# no
# default
# 1
# +
# all
sudo postconf -e 'home_mailbox= Maildir/'
sudo postconf -e 'virtual_alias_maps= hash:/etc/postfix/virtual'
sudo systemctl restart postfix
sudo ufw allow Postfix
echo 'export MAIL=~/Maildir' | sudo tee -a /etc/bash.bashrc | sudo tee -a /etc/profile.d/mail.sh
source /etc/profile.d/mail.sh
sudo apt install s-nail
sudo vim /etc/s-nail.rc
# set emptystart
# set folder=Maildir
# set record=+sent
echo 'init' | s-nail -s 'init' -Snorecord 123@mailiator.com
