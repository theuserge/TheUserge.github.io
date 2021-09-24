# Errors and their Fixes.

The Purpose of this page to get solution of all common Errors.

## 1. Description: "Bad request : chat not found"

![](https://telegra.ph/file/1b707364fd2bb0e6a3805.jpg)

Mostly this happens if your bot missing in log channel. So first add your bot into log channel and restart your bot.
Still happening ? Ok then double check your values of `BOT_TOKEN` and `LOG_CHANNEL_ID`. Probably you did a mistake.

## 2. Description: "Unauthorized"

![](https://i.imgur.com/NktHbGR.jpg)

Probably your `BOT_TOKEN` is invalid. So recheck or revoke it from botfather and update the new value.

## 2. Invalid log chat type

![](https://i.imgur.com/440c4kW.jpg)

You can only use super-groups and channels as log chat. So promote current group into a super-group or use a channel as log chat (`LOG_CHANNEL_ID`).

## 3. Unauthorized for url

![](https://i.imgur.com/5DPIgbE.jpg)

Seems your `HEROKU_API_KEY` is wrong. Goto your heroku account -> profile, grab your api key (regenerate if need) and update the value of this var.

## 4. Build faild: could not find an Aptfile

![](https://i.imgur.com/uGniomq.jpg)

Please read our deployment guide. You are doing it in wrong way.

## 5. Pymonge: Authentication failed

![](https://i.imgur.com/qGlQ3ft.jpg)

Seems like you are using special charactors with your username or password. Simply don't use those or escape them properly.
Further read [this](https://stackoverflow.com/a/64846679).

## 6. Pymongo: no write concern mode named 'masjority' found in ...

![](https://i.imgur.com/eCasnjv.jpg)

By deleting **&w=majority** part at the end will solve this problem. Further read [this](https://stackoverflow.com/a/65507979)

## 7. Too many requests: try after ...

![](https://i.imgur.com/O9OrBcN.jpg)

Turn off your bot for a while and turn back it on. If you read this message properly, you can get an idea about how much time should i stop my bot.

## 8. Unpack requires a buffer of 263 bytes

![](https://i.imgur.com/NySBc32.jpg)

Userge is based on Pyrogram. So you have to give a pyrogram session string to `HU_STRING_SESSION`.

## 9. Auth key duplicated, unregistered or Session revoked

![](https://i.imgur.com/jmS2GuV.jpg)
![](https://i.imgur.com/CGKBGCY.jpg)
![](https://i.imgur.com/o23werB.jpg)

Simply make a new Pyrogram session string.


