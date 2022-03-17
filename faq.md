# FAQs

The Purpose of this page to answer all your common questions regarding UserGe.

## 1. How to Setup UserGe?

A video tutorial to Deploy or Setup UserGe on your Account with Heroku is given below. Watch in your own platforms!
* [![Google Drive 😃](https://img.shields.io/badge/Google_Drive-😃-blue?logo=googledrive)](https://drive.google.com/file/d/1gXQmk9nBth5IfnEA9TUMGjpPE5HnNHCN/view?usp=drivesdk)
* [![Google Photos 😁](https://img.shields.io/badge/Google_Photos-😁-blue?logo=googlephotos)](https://photos.app.goo.gl/Va2ZTZA1RDooV2SKA)
* [![YouTube: Unavailable](https://img.shields.io/badge/YouTube:-Unavailable!_😢-red?logo=youtube)](https://www.youtube.com/watch?v=M4T_BJvFqkc)

To Deploy on your VPS or local machine and For more further information, Check the [Deployment Page](https://theuserge.github.io/deployment.html)

 You can also type `#usergeguide` and `#deployment` in [![UserGe OT](https://img.shields.io/badge/@UserGeOT-blue?logo=telegram)](https://t.me/UsergeOT).

## 2. How to Add Official Plugins?

After Your Userbot starts send 

``` 
.addrepo https://github.com/UsergeTeam/Userge-Plugins
 ```

## 3. How to Generate String Session ?

To Generate Session String of your Userge bot, you can try anyone way from these two methods.

* From Heroku website > Userge App > More > Run Console > Type `bash genStr`

* [Userge Session Gen* Bot](https://t.me/genStr_bot)

For more way to Generate session string, type `#string` in [![UserGe OT](https://img.shields.io/badge/@UserGeOT-blue?logo=telegram)](https://t.me/usergeot).

## 4. How to get All Commands list?

Type `.help` to get All Command list. When you type .help you'll get Modules name. To see which commands include in a specific module Type `.help <module-name>`.

## 5. How to use a Command?

To Know more How a Command works which you get under Modules, type `.help .<command-name>`

## 6. What is SUDO? How to Enable It?

With the help of Sudo you can give access to multiple users to use/control your account or Bot.

<pre>.help sudo </pre>

## 7. How to Setup Google Drive? How to Setup GDrive Parent Id?

* Type `.gsetup` in your Userge Log channel

* You'll get a link something like this

<pre>https://accounts.google.com/o/oauth2/v2/auth?client_id=[SECURED!]&redirect_uri=urn%3Aietf%3Awg%3Aoauth%3A2.0%3Aoob&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fdrive+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fdrive.file+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fdrive.metadata&access_type=offline&response_type=code</pre>

* Open the link and select your Google Account and Allow all Access.

* After that You'll get a code which you have to copy and come back to Telegram channel log,

* Type `.gconf {your_copied_code}` and send

* That's it...

### Setup GDrive Parent Id

* Go to `drive.google.com`. Create or Open the folder which you want to Add, where your bot will upload files. 

* Copy the URL of Page.

<pre>https://drive.google.com/folderview?id=12Ncm5VjoGIKT12eA-cgFOqRZWzVf749v</pre>

 **This is your Folder's Parent Id**

<pre>12Ncm5VjoGIKT12eA-cgFOqRZWzVf749v</pre>

### For TD (Team Drive) Id

<pre>https://drive.google.com/drive/mobile/folders/0AFU0CuwgEOaWUj9PVb?sort=13&direction=a</pre>

**This is your TD Parent Id**

<pre>0AFU0CuwgEOaWUj9PVb</pre>

> **Note:** It's Just a Demo, Don't use the same ID.

* After Getting your Parent ID, Type `.gset {your_parent_id}`

* That's it... Start Uploading your file with `.gup`
> For help, use `.help .gup`.

## 8. What is Bot Mode? How to Enable Bot Mode?

You can use UserGe as a bot which can execute your all commands through the Bot, similarly like Rose Bot and other Bots.

To Use Bot Mode in UserGe, you need to set these two vars and configure the settings shown below.

1. `OWNER_ID`
2. `BOT_TOKEN`

#### `OWNER_ID`

The bot can know it's owner using owner's user ID.

Set `OWNER_ID` Var in KEY and value should be your user id. To get your user id, Type `.ids` in your Saved Messages or reply to your own message.

#### `BOT_TOKEN`

Set `BOT_TOKEN` Var in KEY and value should be your Bot Token which you get from [@BotFather](https://t.me/BotFather) Bot

For More Info: Type `#botmode` in: [![UserGe OT](https://img.shields.io/badge/@UserGeOT-blue?logo=telegram)](https://t.me/usergeot).

After Setup **BOT_TOKEN** and **OWNER_ID**, Add Your bot to Userge log channel. Enable these **settings** in **BotFather**.

> Make sure you've setted up these settings while creating bot with **BotFather**.
> * **Group Privacy**: Turn this OFF
> * **Inline Mode**: Turn this ON
> * **Allow Groups**: Turn this ON
> * Add bot to **Log Channel**

## 9. How to Get Help Menu as Inline Mode?
![This](https://telegra.ph/file/38c3f2e49844401abfbbe.jpg)

To Use Inline Mode You must have enabled Bot Mode!

![This](https://telegra.ph/file/00749e7bb67b36c168e51.jpg)

Type your `@botusername` then give space you'll see Inline Menu.

## 10. What is Dyno Saver? What is .die? (Only for Heroku Users)

Dyno saver is basically turning your Dyno off by typing the command `.die`

> PS:- You have to manually start it again from Heroku Account, you can also use these bots. 
> * [![@HK_Heroku_BOT](https://img.shields.io/badge/Heroku_Bot-@HK__Heroku__BOT-blue?logo=heroku)](https://t.me/HK_heroku_BOT)
> * [![@yHerokuBot](https://img.shields.io/badge/Heroku_Bot-@yHerokuBot-blue?logo=heroku)](https://t.me/yHerokuBot)

**Tips:** You can set timeout to turn your dyno off, it will start to count when you went offline but if you come back online within that timeout, it will start to recount from beginning, you can save a huge amount of dyno hours using this 

## 11. How to Add Buttons in Text, Notes, and Filters?

To Add buttons in Notes and Filters you must have Enabled Bot Mode. To know How to Enable it Click [here](https://theuserge.github.io/faq.html#8-what-is-bot-mode-how-to-enable-bot-mode)

You can add buttons with this syntax:

* `[name][buttonurl:link]`: Adds buttons in each rows
* `[name][buttonurl:link:same]`: Adds buttons in the same row

So, Let's Start:

Suppose, I have to Add button in Text with `Google` and Button name will be `Open URL` and Button link was `https://www.google.com`.

So, here is the Pattern: `Google [Open URL][buttonurl:https://www.google.com]`

To Add buttons in Images, Just Reply with the Images and Follow the Pattern.

## 12. What is FloodWait?

It's a restriction given by Telegram, when you make too much requests to Telegram servers. Mainly this happens when you are spamming with multiple userbots.

You've to wait for sometime to remove the restriction.

## 13. How to Setup Deezloader?

To download Songs and Playlist from Deezer, You need to configure `ARL_TOKEN` var.

Detailed Guide can be found here: [![Deezloader Setup Guide](https://img.shields.io/badge/Setup_Guide_for-Deezloader-green)](https://t.me/UnofficialPluginsHelp/4)

## 14. What is SpamWatch?

It's a Federation in Rose Bot, Which happens to use and develop a userbot named "Kantek" to ban possible spam bots using their logs. SpamWatch API have 3 levels, Normal users can only fetch ban info whereas those with higher level can add bans in SpamWatch.

## 15. How to Set your OWN Custom Media for .alive?

When you type command `.alive` there You'll see Userge Animated GIF. You can change it with any file. To do that use `.setvar ALIVE_MEDIA Your_Media_Link` (The link should be a Link of Message)

**Example:** `.setvar ALIVE_MEDIA https://t.me/theuserge/8`

> More details can be found here: [`ALIVE_MEDIA`](https://theuserge.github.io/deployment#25-alive_media)

## 16. How to Send Secret Message using your Userge Bot?

To Do this you must have enabled Bot Mode and Inline Mode!

![Secret msg](https://telegra.ph/file/6f064b70cecd420d2dcdf.jpg)

1. Type your Bot `@Username` then give a Space.
2. Type Username of the user, which you want to send secret Message.
3. Then Add this symbol `-` After the user's username.
4. Type Message you want say in Private.
5. Then Add this symbol `:` at the last of your Message.

You will see an Inline Query to Send Private Message to the user, Click on it.

> Secret messaging for users without username will be added as soon as possible.

## 17. How to Clear Downloads Path?

 To Clear downloads directory path use command `.dclear`

## 18. How to Stop Autopic?
    
Type `.autopic` once again.

## 19. How to UnZip, Unrar, and Unpack files in Userge?

* First, You have to download your file using `.download` command which will give you the downloaded path after downloading is finished.

> eg. downloads/DisneyMovieCollection.zip

* Now, Use `.unpack download_path` command t extract or unzip the file.

> eg. .unpack downloads/DisneyMovieCollection.zip

That's It...

## 20. How to Add Media in Custom PM Permit?

Before continuing with steps read it briefly to know how it works.

Userge, itself doesn't have such a feature for now to set a media (gif, video, image) in PM Permit but you can do it via embedding your Media link in any word (you may already have seen those blue hyperlinked text),just like that. Telegram will show preview of such direct links, So the user will able to see that media on Telegram itself without actually opening the link.

> It will be added as soon as possible.

You can use this trick with pm-permit with following steps-

1. Reply to any video, gif, image with .telegraph via using userge. it will upload media and give you telegraph link of your media , Copy that link.

2. Now, Write your custom PM Message. (Whatever you want to write.)

3. Select any word in your message (It can be any word or just even a dot at last.)

4. After selecting, Click three dots at the top right of your screen > click Create link > Paste your telegraph link there. 

5. Now just write `.setpmmsg your_custom_pm_msg` before your message and send to set custom PM Permit.

Done, Now it will show that media (via preview) along with your custom PM Message. Also have a look on these [Images](https://telegra.ph/media-in-pmPermit-10-16) to get an idea of How to do it.

## 21. How to Use Spam Watch/Userge AntiSpam API?

`.antispam` If you want Auto ban the spammers from the groups where you are Admin. 

`.info` If you wanna check the user. He/ She is banned in SpamWatch, CAS, or UserGe AntiSpam.

## 22. How to Update Userge Userbot?

To Update your Userge Bot, just type `.update -pull`.
You can select branches using `-master` or `-beta` flags.

> Better check help using `.help update`.

## 23. How to know Dyno Usage?

Type `.usage`

## 24. File type issue while Downloading from link?

When you download any file from the link it contains some query in the URL which came along with the filename, which gives you an issue to open the file. To fix this you can rename the file or can download it with a custom filename.

#### To Rename the file

Use `.term "downloaded_file_path" "new_file_name_with_path"`

<pre>eg. .term "downloads/disney_movie.mp4?string=blablabla" "downloads/disney_movie.mp4"</pre>

#### To Download file with Custom filename

Use `.download your_link | filename.ext`

<pre>eg. .download https//example.com/files/disney_movie.mp4?string=blablabla | disney_movie.mp4</pre>

## 25. How to Add/Load Custom Plugins?

You can also use custom plugins by forking [plugins repo](https://github.com/UsergeTeam/Userge-Plugins) and sending 
```
.addrepo YOUR_REPO_URL
``` 
follwoed by
 ```
 restart -h
```