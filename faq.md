# FAQs

The Purpose of this page to Answer all your common Questions regarding UserGe

## 1. How to Setup UserGe?

[![userge deploy](https://telegra.ph/file/18f15fcd5bc54161b2fbb.jpg)](https://www.youtube.com/watch?v=M4T_BJvFqkc "How to Setup Userge Userbot")

A video tutorial to Deploy or Setup UserGe on your Account with Heroku. To Deploy on your VPS or local machine and For more further Information, Check the [Deployment Page](https://theuserge.github.io/deployment.html)

 You can also type `#usergeguide` and `#deployment` in [UserGeOt](https://t.me/usergeot).

## 2. How to Add Unofficial Plugins?

**For Heroku Users:**

* Go to Heroku website > App Setting > Reveal Config Vars.
* Type **LOAD_UNOFFICIAL_PLUGINS** in the KEY.
* Type **True** in the value.
* That's it... Restart the Dyno.

Check out [this](https://t.me/UnofficialPluginsHelp/31) Guide for more information. You can also Type `#unofficialhelp` in [UserGeOt](https://t.me/usergeot).

**For Docker or Legacy Method Users:**

To Enable Unofficial Plugins on your Userge UserBot. Add `LOAD_UNOFFICIAL_PLUGINS` KEY and value is `true` into your `config.env` file.

## 3. How to Generate String Session ?

To Generate Session String of your Userge bot. You can try anyone way from these two method.

* From Heroku website > Userge App > More > Run Console > Type `bash genStr`

* [Userge Session Gen* Bot](https://t.me/genStr_bot)

For more way to Generate session string. Type `#string` in [UserGeOt](https://t.me/usergeot).

## 4. How to get All Commands list?

Type `.help` to get All Command list. When you type .help you'll get Modules name. To see which commands include in a specific module Type `.help <module-name>`.

## 5. How to use a Command?

To Know more How a Command works which you get under Modules. Type `.help .<command-name>`

## 6. What is SUDO? How to Enable It?

With the help of Sudo you can give access to multiple users to use/control your account or Bot.

<pre>.help sudo </pre>

## 7. How to Setup Google Drive? How to Setup GDrive Parent Id?

* Type `.gsetup` in your Userge Log channel

* You'll get a link something like this

<pre>https://accounts.google.com/o/oauth2/v2/auth?client_id=[SECURED!]&redirect_uri=urn%3Aietf%3Awg%3Aoauth%3A2.0%3Aoob&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fdrive+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fdrive.file+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fdrive.metadata&access_type=offline&response_type=code</pre>

* Open the link and Select your Google Account and Allow all Access.

* After that You'll get a code which you have to copy and come back to Telegram channel log,

* Type `.gconf your_copied_code` and send

* That's it...

### Setup GDrive Parent Id

* Go to `drive.google.com` Create or Open the folder which you want to Add, Where your bot will upload files. 

* Copy the URL of Page

<pre>https://drive.google.com/folderview?id=12Ncm5VjoGIKT12eA-cgFOqRZWzVf749v</pre>

 **This is your Folder's Parent Id**

<pre>12Ncm5VjoGIKT12eA-cgFOqRZWzVf749v</pre>

### For TD (Team Drive) Id

<pre>https://drive.google.com/drive/mobile/folders/0AFU0CuwgEOaWUj9PVb?sort=13&direction=a</pre>

**This is your TD Parent Id**

<pre>0AFU0CuwgEOaWUj9PVb</pre>

> **Note:** It's Just a Demo, Don't use the same ID.

* After Getting your Parent Id. Type `.gset your_parent_id`

* That's it... Start Uploading your file with `.help .gup`

## 8. What is Bot Mode? How to Enable Bot Mode?

You can use UserGe as bot which can execute your all commands through the Bot. Similarly like Rose Bot and other Bots.

To Use Bot Mode in Userge, you need to set these two vars and configure the settings shown below.

1. OWNER_ID
2. BOT_TOKEN

#### OWNER_ID

Set OWNER_ID Var in KEY and value should be your user id. To get your user id, Type `.ids` in the reply of your own message.

#### BOT_TOKEN

Set BOT_TOKEN Var in KEY and value should be your Bot Token which you get from @BotFather Bot

For More Info: Type `#botmode` in [UserGeOt](https://t.me/usergeot).

*After Setup* **BOT_TOKEN** *and* **OWNER_ID** *Add Your bot to Userge log channel and Enable these* **settings** *in* **BotFather**

![This](https://telegra.ph/file/16a099e25ca28647d6662.jpg)

## 9. How to Get Help Menu as Inline Mode?
![This](https://telegra.ph/file/38c3f2e49844401abfbbe.jpg)

To Use Inline Mode You must have enabled Bot Mode!!!

![This](https://telegra.ph/file/00749e7bb67b36c168e51.jpg)

Type your `@botusername` then give space you'll see Inline Menu

## 10. What is Dyno Saver? What is .die? Only for Heroku Users

Dyno saver is basically turning your Dyno off by typing the command `.die`

Ps:- You have to manually start it again from Heroku Account, you can also use [@HK_heroku_BOT](https://t.me/HK_heroku_BOT) and [@yHerokuBot](https://t.me/yHerokuBot)

**Tips:** You can set timeout to turn your dyno off ,it will start to count when you went offline but if you come back online within that timeout, it will start to recount from beginning ,you can save huge amount of dyno hours using this 

## 11. How to Add Buttons in Text, Notes, and Filters?

To Add buttons in Notes and Filters you must have Enabled Bot Mode. To know How to Enable it Click [here](https://theuserge.github.io/faq.html#8-what-is-bot-mode-how-to-enable-bot-mode)

So, Let's Start:

Suppose, I have to Add button in Text with `Google` and Button name will be `Open URL` and Button link was `https://www.google.com`.

So, here is the Pattern: `Google [Open URL][buttonurl:https://www.google.com]`

To Add buttons in Images, Just Reply with the Images and Follow the Pattern.

## 12. How to Setup Lydia?

Lydia is a Active Machine Learning Chat Bot Powered by CoffeeHouse from @Intellivoid. This AI Chat bot reply user messages using AML.

To Setup this You have to configure these two KEY vars on your Heroku App or If you are using other plaform than Heroku then add these var on your `config.env` file.

1. `CH_LYDIA_API`
2. `CUSTOM_REPLY_CHANNEL`

#### CH_LYDIA_API

* Visit the website [coffeehouse.intellivoid.net](https://coffeehouse.intellivoid.net/).
* Select your Plan and continue.
* If you already have an Account then Login. otherwise, Create one.
* Now, you will be able to see dashboard, Scroll Down and you will find your API/Access key.
* Add the Var value with your API Key.

#### CUSTOM_REPLY_CHANNEL

This Var need to be configured if you want your bot will send Sticker/ Gif/ Photo/ Video/ Text to users. Bot will randomly pick any media file from the channel and send to the user.

* Create a Private channel and Set channel Id in Var value.
* Now, Send your favorite media's and stickers in the channel.

For More Information: Check this [Guide](https://t.me/UnofficialPluginsHelp/55)

## 13. What is FloodWait?

It's kinda a Restriction by Telegram, If you make multiple requests from Telegram server. They restrict you from sending more requests. Mainly It happens when you use same session string in many Bots or spamming on Telegram.

## 14. How to Setup Deezloader?

To download Songs and Playlist from Deezer. You need to configure these var.

Detailed Guide can be found here: [Deezloader Setup Guide](https://t.me/UnofficialPluginsHelp/4)

## 15. What is SpamWatch?

It's a Federation in Rose Bot, Which happens to use and develop a userbot named kantek to ban possible spam bots using their logs. SpamWatch API have 3 levels, Normal users can only fetch ban info whereas those with higher level can add bans in SpamWatch.

## 16. How to Set your OWN Custom Media for .alive?

When you type command `.alive` there You'll see Userge Animated GIF. You can change it with any file. To do that use `.setvar ALIVE_MEDIA Your_Media_Link` (The link should be a Link of Message)

**Example:** `.setvar ALIVE_MEDIA https://t.me/theuserge/8`

## 17. How to Send Secret Message using your Userge Bot?

To Do this you must have enabled Bot Mode in Userge.

![Secret msg ](https://telegra.ph/file/6f064b70cecd420d2dcdf.jpg)

1. Type your Bot @Username then give a Space.
2. Type Username of the user, which you want to send secret Message.
3. Then Add this symbol `-` After the user's username.
4. Type Message you want say in Private.
5. Then Add this symbol `:` at the last of your Message.

You will see a Inline Query to Send Private Message to the user, Click on it.

## 18. How to Clear Downloads Path?

 To Clear downloads directory path use command `.dclear`

## 19. How to Stop Autopic?
    
Type `.autopic` once again.

## 20. How to UnZip, Unrar, and Unpack files in Userge?

* First, You have to Download your file using `.download` command which will give you downloaded path after downloading finish.

> eg. downloads/DisneyMovieCollection.zip

* Now, Use `.unpack download_path` command t extract or unzip the file.

> eg. .unpack downloads/DisneyMovieCollection.zip

That's It...

## 21. How to Add Media in Cstom PM Permit?

Before continuing with steps understand this it briefly. 

Userge, Itself doesn't have such feature for now to set a media (gif, video, image) in PM Permit. but you can do it via embeding your Media link in any word (you may already have seen those blue text (hyperlinked text) containing links, Just like that we going to use that. Telegram will show preview of such direct links, So user will able to see that media on telegram itself without actually opening the link.

To do Follow these Steps:

1. Reply to any video, gif, image with .telegraph via using userge. it will upload media and give you telegraph link of your media , Copy that link.

2. Now, Write your custom PM Message. (Whatever you want to write.)

3. Select any word in your message (It can be any word or just even a dot at last.)

4. After selecting, Click three dots at your top right of your screen > click Create link > Paste your telegraph link there. 

5. Now just write `.setpmmsg your_custom_pm_msg` before your message and send to set custom PM Permit.

Done, Now it will show that media (via preview) along with your custom PM Message. Also have a look on this [Image](https://telegra.ph/media-in-pmPermit-10-16) to get a idea of How to do it.

## 22. How to Use Spam Watch API?

`.antispam` If you want Auto ban the spammers from the groups where you are Admin. 

`.info` If you wanna check the user. He/ She is banned in SpamWatch or CAS.

## 23. How to Update Userge Userbot?

To Update your Userge Bot better check in help by typing `.help update`

## 24. How to know Dyno Usage?

Type `.usage`

## 25. File type issue while Downloading from link?

When you download any file from the link it contain some query in the url which came along with the filename. which give you issue to open the file. To fix this you can rename the file or can download with custom filename.

#### To Rename the file

Use `.term "downloaded_file_path" "new_file_name_with_path"`

<pre>eg. .term "downloads/disney_movie.mp4?string=blablabla" "downloads/disney_movie.mp4"</pre>

#### To Download file with Custom filename

Use `.download your_link | filename.ext`

<pre>eg. .download https//example.com/files/disney_movie.mp4?string=blablabla | disney_movie.mp4</pre>
