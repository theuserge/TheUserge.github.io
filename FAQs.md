**The Purpose of this page to Answer all your common Questions regarding UserGe**

***

## 1. How to Setup UserGe?

Here is Video Tutorial to Deploy or Setup UserGe on your Account with Heroku:

[https://youtu.be/M4T_BJvFqkc](https://youtu.be/M4T_BJvFqkc)

To Deploy on your VPS or local machine. Check out the Repository Read Me section

For more Information: Type `#usergeguide` or `#tutorial` in [UserGeOt](https://t.me/usergeot).

## 2. How to **Add Unofficial Plugins**?

Check out this Guide for Heroku

[https://t.me/UnofficialPluginsHelp/31](https://t.me/UnofficialPluginsHelp/31).

To Enable Unofficial Plugins on your VPS or local machine add or change value to `true` in your `config.env` file.

Type `#unofficialhelp` in [UserGeOt](https://t.me/usergeot).

## 3. How to Generate String Session ?

Type `#string` in [UserGeOt](https://t.me/usergeot).

## 4. How to get All Commands list?

Type `.help` to get All Command list. When you type .help you'll get Modules name. To see which commands include in a specific module Type `.help <module-name>`.

## 5. How to use a Command?

To Know more How a Command works which you get under Modules. Type `.help .<command-name>`

## 6. What is SUDO? How to Enable It?

With the help of Sudo you can give access to multiple users to use/control your account or Bot.

<pre>.help sudo </pre>


## 7. What is Parent Id/ Folder Id in GDrive? How to Get it?

1. Go to `drive.google.com` Open an folder that you want add, where you uploaded file will store.

2. Look at the URL of Page

<pre>https://drive.google.com/folderview?id=12Ncm5VjoGIKT12eA-cgFOqRZWzVf749v</pre>

3. This is your Folder's Parent Id

<pre>12Ncm5VjoGIKT12eA-cgFOqRZWzVf749v</pre>

### For TD (Team Drive) Id

<pre>https://drive.google.com/drive/mobile/folders/0AFU0CuwgEOaWUj9PVb?sort=13&direction=a</pre>

This is your TD Parent Id

<pre>0AFU0CuwgEOaWUj9PVb</pre>

📌**Note:** It's Just a Demo , Don't use the same ID 😂😳

## 8. What is Bot Mode? How to Enable **Bot Mode**?

You can use UserGe as bots which execute your all command through the Bot. Similarly like Rose Bot and other Bots.

Type `#botmode` in [UserGeOt](https://t.me/usergeot).

After Setup Bot Token Enable these thing in BotFather

![This](https://telegra.ph/file/16a099e25ca28647d6662.jpg)

## 9. How to Get Help Menu as Inline Mode?
![This](https://telegra.ph/file/38c3f2e49844401abfbbe.jpg)

To Use Inline Mode You must have enabled Bot Mode!!!

![This](https://telegra.ph/file/00749e7bb67b36c168e51.jpg)

Type your `@botusername` then give space you'll see Inline Menu

## 9. What is Dyno Saver? What is `.die`? Only for Heroku Users

Dyno saver is basically turning your Dyno off by typing the command `.die`

(Ps:- You have to manually start it again from Heroku Account, you can also use [@HK_heroku_BOT](https://t.me/HK_heroku_BOT) and [@yHerokuBot](https://t.me/yHerokuBot))

**Tip:** You can set timeout to turn your dyno off ,it will start to count when you went offline but if you come back online within that timeout, it will start to recount from beginning ,you can save huge amount of dyno hours using this 🌞

## 10. How to Add Buttons in Notes/Filters ?

Suppose i am adding a button with a, 

caption `"hello"` 

button name- `testing`

website- `www.google.com` 

So here is its pattern:-

`hello [test][buttonurl:www.google.com]`

just add it to note/filter now..

## 15. how to setup Lydia ?
    
[Lydia help](https://t.me/UnofficialPluginsHelp/55)

## 16. What is floodwait?

It's kinda a Restriction by TELEGRAM , if u make requests in bulk to telegram servers they restrict you from sending more requests

📌Mainly happens when you use same session string in many bots

## 17. How to setup deezloader?
    
[Deezloader Setup guide](https://t.me/UnofficialPluginsHelp/4)

## 18. What is spamwatch?

It's a federation in rose bot, which happens to use and develop a userbot named kantek to ban possible spam bots using their logs 😕😕SpamWatch api have 3 levels . Normal users can only fetch ban info whereas those with higher lvl can add bans in SpamWatch 🤔.

## 19.How to set your own custom media for .alive?

.`setvar ALIVE_MEDIA link` (the link should be a link to message)

Example :

.setvar ALIVE_MEDIA `https://t.me/theuserge/8`   

## 20. How to use YouTube cmd of userge properly?

**1. how to download videos?**
    
   `.ytdl [link]`

Eg:- 

`.ytdl https://youtu.be/M4T_BJvFqkc`

**2. how to download YouTube as MP3 and upload to Telegram?**

 `.ytdl -m -t [link] , the link will upload the mp3`

Eg:- 

`.ytdl -m -t https://youtu.be/M4T_BJvFqkc`

For more detailed cmds type` .help ytdl`

## 21.what are index link? 

index links are direct shareable links for drive files, you can use that to share context of gdrive without making the file public.(not only gdrive but other cloud storage also ) (click here to get list of index links )

📌Also if you want to know how to upload gdrive files to Telegram then answer is index link only . Use the index link of the file and paste it in any upload bot and you will get that file.
You can also use userge (`!download` and `!upload` )

Eg for userge :- 
`!download[index link]`
![This](https://telegra.ph/file/198178745f79f9617e99d.jpg)
`Then !upload downloads/Death.Note.S01E01.10bit.720p.BRrip.English.Audio.x265-[AKJ].mkv`

## 22.How to send secret message in userge bot ?

📌note that you will need to userge as bot i.e botmode

![Secret msg ](https://telegra.ph/file/6f064b70cecd420d2dcdf.jpg)
1. Type your bot username.
2. Type Username or user_id, which you wanna send Msg.
3. then add this symbol -
4. Type Msg you want say in private.
5. Then add this symbol :


you will see a Inline Query to Send Msg to a user, click on it.

## 23. What's the purpose of Worker VAR?

Same as workers of building construction, More the workers , more it will handle, But it consumes dyno too

## 24. How to clear download path?
  
 `.dclear`

## 25. How to stop autopic?
    
Do `.autopic` once again

## 26. How to use upload and download feature of userge properly ?

I will divide this answer in parts and try to answer the common problems in order :

**1.How to download any link and upload it in Telegram?**

see post on 18(I have shown it with index link but it works with any link ) 

**2.How to upload a Telegram media/direct link/pdf file/image/videos...ect to gdrive ?**

(*Remember the examples are of different link and you might have a different link but process is always same*) 

Example: (example is for link , For Telegram media/pdfs/images/video, reply it with .download cmd )

`.download link` 

`Downloaded to downloads/AnimeKayo_Uzaki_chan_wa_Asobitai!_Ep_10_720p_Eng_Sub_HEVC_Marshall.mkv in 39 seconds`

Then do, 

`.gup` 

`downloads/AnimeKayo_Uzaki_chan_wa_Asobitai!_Ep_10_720p_Eng_Sub_HEVC_Marshall.mkv` 

**And the file will be uploaded to Gdrive**

**3.How to unrar a rar drive file and upload it back to gdrive or upload in Telegram?**

(*Remember the examples are of different link and you might have a different link but process is always same*) 

Example:-

`.gdown the drive link` 

`downloads/[Kusonime] Manusia Satu Pukulan Musim 2 720P.rar `
**(you can see the .rar at last which says that the drive file is a rar )**


After this ,
 
`!unpack downloads/[Kusonime] Manusia Satu Pukulan Musim 2 720P.rar`

`unpacked downloads/[Kusonime] Manusia Satu Pukulan Musim 2 720P.rar into downloads/[Kusonime] Manusia Satu Pukulan Musim 2 720P in 28 seconds. `

Now,
 
`.gup downloads/[Kusonime] Manusia Satu Pukulan Musim 2 720P `
**(if you wanna upload this unrared files back to TD)**

**To upload in Telegram:-**

`!upload downloads/[Kusonime] Manusia Satu Pukulan Musim 2 720P`

**The example is shown with a rar file but all file types supported like zip,tar etc.**

## 27. How to add media in custom pm permit?

Before continuing with steps let me explain it  briefly. 

logic:- look , userge itself have no such feature for now to set a media(gif,,video,image whtever) in your custom pm permit. but you can do it  via embeding your media link in any word(you may already have seen those blue text containing link in them,..just like that) of your custom pm permit. Telegram will show preview of such direct links , so user will able to see that media on telegram itself without actually opening the link.

Steps to do so-

1. reply to any video,gif,image with .telegraph via using userge. it will upload media and give you telegraph link of your media , copy that link.

2. Now,write your custom pm message.(whatever you want to write.)

3. select any word in your message(it can be any word or just even a dot at last)

4. after selecting , click three dots at your right>click create link >paste your link there. 

5. now just write `.setpmmsg` before this whole message and send it anywhere.

done, now it will show that media (via preview) along with your custom pm message. Also have a look on these [Images](https://telegra.ph/media-in-pmPermit-10-16) to get a better idea of how to do it.

## 28. How to delete all profile pic of your Telegram Account?

   `.delpfp <count>`

## 29. How to use spam watch api?

`.antispam` if u want auto ban of spammers. 

`.info` u wanna chek if someone is banned in SpamWatch or CAS

## 30. How to update userbot?

`.update -beta -pull -push`
Or

`.update -master -pull -push`

**(Beta and master are two different branches , use anyone you like )**

## 31. How to know dyno usage?

  `.usage`

## 32. File type issue while downloading from direct link?
 
 Via downloading with direct links due to undefined extension , can give issue while accessing your file after being downloaded. Simple solution for that is to rename it accordingly with correct extension , for this you should know the correct extension for the file you are downloading . You can do it  from your local storage after downloading it or before downloading also via following command -
`.download direct-link | filename.ext`
`eg-.download https//xyzzzzzz.com | Titanic.mkv`
