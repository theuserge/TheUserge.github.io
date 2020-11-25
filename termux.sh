log() {
	echo -e "\n##### $1 #####\n"
}

log "installing python"
pkg install -y root-repo python
pip install -U pip wheel setuptools

log "installing necessary packages"
pkg install -y git jq proot resolv-conf libxml2 libxslt libjpeg-turbo

log "installing Pillow"
LDFLAGS="-L/system/lib/" CFLAGS="-I/data/data/com.termux/files/usr/include/" \
	pip install --use-feature=2020-resolver Pillow

log "clonning repo"
git clone https://github.com/UsergeTeam/Userge Userge && cd Userge 

log "installing requirements"
CFLAGS="-O0" pip install --use-feature=2020-resolver -r requirements.txt

cp config.env.sample config.env
log "wait. now openning config.env ...\nedit, save (ctrl+s) and close (ctrl+x) it."
sleep 10
nano config.env

log "all done!\nnow do termux-chroot and bash Userge/run respectively.\nenjoy :)"
echo -e "\nmore info https://theuserge.github.io/termux\n"
