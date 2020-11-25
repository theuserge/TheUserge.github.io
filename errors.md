# Errors and their Fixes.

The Purpose of this page to get solution of all common Errors.

## 1. description : "Bad request : chat not found"

[![error 1](https://telegra.ph/file/1b707364fd2bb0e6a3805.jpg)](https://t.me/usergeot/502028)

**If your Logs give Error something like this.**

Simply Do add your bot in your `Log channel` and Do `restart` Manually from Heroku.

## 2. ERROR :: Required Command : jq : could not be found !

[![error 2](https://telegra.ph/file/28e9365af63d3b509f501.jpg)](https://t.me/usergeot/514541)

**If your Logs say something like this.
Do Add this buildpack in heroku.**
`https://github.com/chrismytton/heroku-buildpack-jq.git`

<pre>Go to heroku -> Select your app -> select setting option -> scroll down -> Click on Add buildpack-> Add THIS link in Bar -> Click on Add -> then Deploy Branch.</pre>

## 3. 'fatal: bad revision 'HEAD...upstream/master'

[![error 3](https://telegra.ph/file/aeda709f622f34ae3802d.jpg)](https://t.me/usergeot/519271)

**Recently UserGe Updated to v0.3.0, so maybe old users who didn't update yet will get this ERROR.**

_Simply do this to fix this._
`.update -master -pull -push`

_Or if Bot not Working. Do Delete Old Fork.
Refork and Deploy Branch to Master._

## 4. Error R14 (memory quota exceeded)

[![error 4](https://telegra.ph/file/d5f90faff504b334e541f.jpg)](https://t.me/usergeot/599155)

**If your Logs say something like this.Try Below Suggestion.**

1- _Disable unofficial plugin_ by `.setvar LOAD_UNOFFICIAL_PLUGINS False` and `restart your dynos.`

2 - Do `.update -beta -pull -push`

3 - _Enable unofficial plugin again by_ `.setvar LOAD_UNOFFICIAL_PLUGINS True`
after UserGe has started successfully.
## 5. GitCommandError

[![error 5](https://telegra.ph/file/1a286bbd6284f71abfed4.jpg)](https://t.me/usergeot/539484)

**If you Get error Like this while Updating.**

do `.restart -h` and check again.
