log() {
	echo -e "\n##### $1 #####\n"
}

log "Installing Python"
pkg update -y && pkg upgrade -y
pkg install -y root-repo python
pip install -U pip wheel setuptools

log "Installing Necessary Packages"
pkg install -y git jq proot resolv-conf libxml2 libxslt libjpeg-turbo

log "Installing Pillow"
LDFLAGS="-L/system/lib/" CFLAGS="-I/data/data/com.termux/files/usr/include/" \
	pip install --use-feature=2020-resolver Pillow

log "Clonning Repository"
git clone https://github.com/UsergeTeam/Userge Userge && cd Userge 

log "Installing Requirements"
CFLAGS="-O0" pip install --use-feature=2020-resolver -r requirements.txt

cp config.env.sample config.env
log "Wait. Now openning config.env ...\nEdit, and Save (ctrl+s) and Close (ctrl+x) it."
sleep 10
nano config.env

log "All done!\nNow run command "termux-chroot" and "cd Userge && bash run" respectively.\nEnjoy :)"
echo -e "\nFor more info: https://theuserge.github.io/termux\n"
