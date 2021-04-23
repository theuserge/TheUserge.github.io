# Termux Guide for Userge

<pre><b>Important!</b> unlike heroku it will cost everything from you</pre>

## Prerequisite

* [Termux](https://play.google.com/store/apps/details?id=com.termux) App
* At least **750MB** device storage

## Quick Setup

* Open Termux and run `bash <(curl -s https://theuserge.github.io/termux.sh)`.
* Wait for a while (`upto 10min`) ... (some times it may ask for inputs).
* It will redirect to `config.env` and ask to fill.
* Fill them, save (`ctrl+s`) and close (`ctrl+x`) it.
* Now, Installation done and time to run userge.
* But first of all do `termux-chroot` to fix DNS Resolver issues.
* Nice, Now you are in root so `cd Userge && bash run`.
* Enjoy :)

## Step By Step:

First of all, Update packages and Install root Repository

```bash
pkg update && pkg upgrade
pkg install root-repo
```

Install Python and necessary packages

```bash
pkg install python
pip install -U pip wheel setuptools
pkg install git jq proot resolv-conf libxml2 libxslt libjpeg-turbo
```

Install Pillow

```bash
LDFLAGS="-L/system/lib/" CFLAGS="-I/data/data/com.termux/files/usr/include/" pip install Pillow
```

Then Clone `Userge` and Go to cloned directory

```bash
git clone https://github.com/UsergeTeam/Userge Userge && cd Userge
```

Install Requirements

```bash
CFLAGS="-O0" pip install -r requirements.txt
```

Generate and Fill `config.env`

```bash
cp config.env.sample config.env
nano config.env
```

Done. Now run Userge

```bash
termux-chroot
cd Userge
bash run
```
