# Termux Guide for Userge

> **important!** unlike heroku it will cost everything from you

## Prerequisite

* [termux](https://play.google.com/store/apps/details?id=com.termux) app
* at least **750MB** device storage

## Quick Setup

* open termux and run `bash <(curl -s https://theuserge.github.io/termux.sh)`
* wait for a while (`upto 10min`) ... (_some times it may ask for inputs_)
* it will redirect to `config.env` and ask to fill
* fill them, save (`ctrl+s`) and close (`ctrl+x`) it
* now installation done and time to run userge.
* but first of all do `termux-chroot` to fix dns resolver issues
* nice, now you are in root so `cd Userge && bash run` or `bash Userge/run`
* enjoy :)

## Step By Step

first of all install root repo

```bash
pkg install root-repo
```

install python and necessary packages

```bash
pkg install python
pip install -U pip wheel setuptools
pkg install git jq proot resolv-conf libxml2 libxslt libjpeg-turbo
```

install pillow

```bash
LDFLAGS="-L/system/lib/" CFLAGS="-I/data/data/com.termux/files/usr/include/" pip install --use-feature=2020-resolver Pillow
```

then clone `Userge` and goto cloned directory

```bash
git clone https://github.com/UsergeTeam/Userge Userge && cd Userge
```

install requirements

```bash
CFLAGS="-O0" pip install --use-feature=2020-resolver -r requirements.txt
```

generate and fill `config.env`

```bash
cp config.env.sample config.env
nano config.env
```

done. now run

```bash
termux-chroot
cd Userge
bash run
```
