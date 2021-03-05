
# Deployment

This Userbot can be deployed with four different ways. Which are Heroku, Docker, Zeet and Legacy way.

[**Heroku**](https://theuserge.github.io/deployment.html#deploying-with-heroku) - A Free Platform providing developers to test or run their code. If you don't have VPS or dont want to deploy local on your system. This is the best place to deploy your Userbot for free.



[**Docker**](https://theuserge.github.io/deployment.html#deploying-with-docker-) - Run the Userbot in an isolated application that doesn't interfere to the system but uses your same system hardware and internet. You Just have to fill mandatory vars and 2-3 line commands to Run Userge on Docker.

[**Legacy-Method**](https://theuserge.github.io/deployment.html#deploying-with-legacy-method)- Using Python and all those packages which are required to Run this bot. You can also say a Manual way to deploy a userbot.

[**ZEET**](https://theuserge.github.io/deployment.html#deploying-on-zeet) - A free platform similar to Heroku. If you don't have VPS or dont want to deploy local on your system then You can deploy your userbot there. 


## Deploying with Heroku 


### **Steps to Deploy:**


**1.** [**Click here to deploy Userge.**](https://heroku.com/deploy?template=https://github.com/rking32/HelperScript) 


**2. Fill** [**Mandatory Vars**](https://theuserge.github.io/deployment.html#list-of-available-vars-in-userge) **values.**


**3. Click on Deploy Button.**


**4. Turn on Dyno from Resource Tab.** 


**5. That's it... Start using Userge.**


You can add [**Non-Mandatory Vars**](https://theuserge.github.io/deployment.html#non-mandatory-vars) later as per your needs. Those vars are used by their respective plugins in userbot to work. To know How to add Non-Mandatory vars, Check this [Guide](https://t.me/UnofficialPluginsHelp/31).










## Deploying with Docker 🐳

**1. Install Docker**

Follow the official Docker [Installation Guide](https://docs.docker.com/engine/install/ubuntu/)

**2. Install Docker-Compose**

The easiest way to install docker-compose is:

```bash
sudo pip install docker-compose
```

OR also you can check other official methods of installing docker-compose [here](https://docs.docker.com/compose/install/)

**3. Run Userge**

We don't need to clone the repo (yeah Docker-compose does that for us)

Setup configs (Download the sample config file)

```bash
mkdir userge && cd userge
wget https://raw.githubusercontent.com/UsergeTeam/Userge/alpha/config.env.sample -O config.env
vim config.env
```
    
Download the yml file for docker-compose
    
```bash
wget https://raw.githubusercontent.com/UsergeTeam/Userge/alpha/resources/docker-compose.yml
```
Finally, start the bot

```bash
docker-compose up -d
```
The bot should be running now. Check logs with

```bash
docker-compose logs -f
```

**Q. How to Stop the Bot?**

To stop the running bot in Docker use this Stop Command

```bash
docker-compose stop
```

This will just stop the containers. Built images won't be removed. So next time you can start with this command

```bash
docker-compose start
```

It won't take time for building from scratch.
    
To delete the built image of Bot. Use this Down command

```bash
docker-compose down
```
You can stop and delete the built images also. So next time you have to do this to start the bot.

```bash
docker-compose up -d
```

**Q. How to Update the Bot?**

```bash
docker-compose up -d
```

Changes will be fetched from git repo. You can change repo url from **docker-compose.yml** file.

## Deploying with Legacy Method

### Requirements:

* Python 3.8 or higher version
* [Mandatory Vars](https://theuserge.github.io/deployment.html#mandatory-vars)

**1. Install required package**

``sudo apt install tree wget2 p7zip-full jq ffmpeg wget git``

``wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb``

``sudo apt install ./google-chrome-stable_current_amd64.deb``

**2. Clone the Repository**

```bash
git clone https://github.com/UsergeTeam/Userge.git && cd Userge
```

**3. Install Requirements**

```bash
pip install -r requirements.txt
```

**4. Create config.env as given config.env.sample and Fill that**

```bash
cp config.env.sample config.env
```

**5. Get String Session and Add it to config.env**

```bash
bash genStr
```
OR you can use this [@genStr_bot](https://t.me/genStr_bot) to get the string.

**6. Finally Run the Userge**

```bash
bash run
```

## Deploying on ZEET

**1. Fork the** [**Userge Repo**](https://github.com/usergeteam/userge)

![](https://telegra.ph/file/706cc93a2b2f085ca9fc4.jpg)

**2. Login there using your github account.**

**3. Now click on new project.**

**4. Select GitHub as the source of your app.** 

![](https://telegra.ph/file/df3518284fc300ee91ad4.jpg) 

**5. Select Trial plan and click continue.** 

![](https://telegra.ph/file/6051bf579d1bc33cc1dc5.jpg) 

**6. Click Authorize On GitHub**

**7. Choose Your Userge Forked Repo and click Continue.**

![](https://telegra.ph/file/1015d469e8e4c4e9ade44.jpg) 

**8. Click Deploy now.**

![](https://telegra.ph/file/36226975cc5af74468b8c.jpg) 

**9. Now, it will show you the build logs.**


![](https://telegra.ph/file/9bebfd396ca9359af7e9c.jpg) 

**10. Now wait at that page till the build gets finished**

**11. After the build finished, add all the mandatory vars and the non mandatory vars you want.**

![](https://telegra.ph/file/5be7144568fb2bcb510ed.jpg) 

**Here is the List of all the** [**Mandatory**](https://theuserge.github.io/deployment.html#list-of-available-vars-in-userge) and [**Non-Mandatory**](https://theuserge.github.io/deployment.html#non-mandatory-vars) **vars**

**Here is a preview of how the vars will look after adding.** 

![](https://telegra.ph/file/fe49264b531c1c189fe95.jpg)

**12. Now go check project logs.** 

   **Your bot is started now :)**



 
## Config Vars / [**Setting Up Vars**](https://github.com/UsergeTeam/Userge/blob/beta/config.env.sample)

Config vars are basically the variables which configure or modify userbot's to function. which are the basic necessities of plugins or code to work. You have to set the proper mandatory vars to make it functional and to start the basic feature of bot.

**You can leave non mandatory vars for now and can add them later.**

### List of Available Vars in Userge

Click on any var from the list below to get its detailed description and setup guide.

### Mandatory Vars:

1. [**API_ID** and **API_HASH**](https://theuserge.github.io/deployment#1-api_id-and-api_hash)

2. [**DATABASE_URL**](https://theuserge.github.io/deployment#2-database_url)

3. [**LOG_CHANNEL_ID**](https://theuserge.github.io/deployment#3-log_channel_id)

4. Vars Defined for your [**Mode**](https://theuserge.github.io/deployment#userge-modes)

**Note:** These are the minimum required vars need to setup to make userbot functional.

### Non-Mandatory Vars:

1. [**LOAD_UNOFFICIAL_PLUGINS**](https://theuserge.github.io/deployment#1-load_unofficial_plugins)

2. [**WORKERS**](https://theuserge.github.io/deployment#2-workers)

3. [**G_DRIVE_CLIENT_ID** *&* **G_DRIVE_CLIENT_SECRET**](https://theuserge.github.io/deployment#3-g_drive_client_id--g_drive_client_secret)

4. [**G_DRIVE_IS_TD**](https://theuserge.github.io/deployment#4-g_drive_is_td)

5. [**G_DRIVE_INDEX_LINK**](https://theuserge.github.io/deployment#5-g_drive_index_link)

6. [**DOWN_PATH**](https://theuserge.github.io/deployment#6-down_path)

7. [**PREFERRED_LANGUAGE**](https://theuserge.github.io/deployment#7-preferred_language)

8. [**CURRENCY_API**](https://theuserge.github.io/deployment#8-currency_api)

9. [**OCR_SPACE_API_KEY**](https://theuserge.github.io/deployment#9-ocr_space_api_key)

10. [**WEATHER_DEFCITY**](https://theuserge.github.io/deployment#10-weather_defcity)

11. [**SPAM_WATCH_API**](https://theuserge.github.io/deployment#11-spam_watch_api)

12. [**OPEN_WEATHER_MAP**](https://theuserge.github.io/deployment#12-open_weather_map)

13. [**REMOVE_BG_API_KEY**](https://theuserge.github.io/deployment#13-remove_bg_api_key)

14. [**G_DRIVE_PARENT_ID**](https://theuserge.github.io/deployment#14-g_drive_parent_id)

15. [**CMD_TRIGGER**](https://theuserge.github.io/deployment#15-cmd_trigger)

16. [**SUDO_TRIGGER**](https://theuserge.github.io/deployment#16-sudo_trigger) 

17. [**UPSTREAM_REPO**](https://theuserge.github.io/deployment#17-upstream_repo) 

18. [**FINISHED_PROGRESS_STR**](https://theuserge.github.io/deployment#18-finished_progress_str) 

19. [**UNFINISHED_PROGRESS_STR**](https://theuserge.github.io/deployment#19-unfinished_progress_str) 

20. [**CUSTOM_PACK_NAME**](https://theuserge.github.io/deployment#20-custom_pack_name) 

21. [**ALIVE_MEDIA**](https://theuserge.github.io/deployment#21-alive_media) 

22. [**INSTA_ID & INSTA_PASS**](https://theuserge.github.io/deployment#22-insta_id--insta_pass)  

23. [**HEROKU_API_KEY**](https://theuserge.github.io/deployment#23-heroku_api_key) 

24. [**HEROKU_APP_NAME**](https://theuserge.github.io/deployment#24-heroku_app_name)

25. [**CUSTOM_PLUGINS_REPO**](https://theuserge.github.io/deployment#25-custom_plugins_repo)

<pre> UserGe has many non-mandatory vars which are used for Extra features. </pre>

### 1. API_ID and API_HASH

1. Go to [my.telegram.org](https://my.telegram.org) then Enter your Phone Number with your country code.

2. After, you are logged in click on API Development Tools.

3. Enter Anything as App name and App short name, Enter my.telegram.org in url section

4. That's it, You"ll get your **API_ID** and **API_HASH** Var.

### 2. DATABASE_URL

* First, Go to [cloud.mongodb.com](https://cloud.mongodb.com) then Sign Up there.

* Login or Sign Up (Create an Account) there. If you don't have an Account!

* After Login, You'll be on their Dashboard Page

![This](https://telegra.ph/file/46e58355fe5bf648c8108.jpg)

* Choose an option **Build a Cluster** (as the shown picture below)

* Now, You'll see Pricing Plan section.

![This](https://telegra.ph/file/714afabd905531eedc275.jpg)

* Here, We going to use Free Plan for our userbot

* After that, You have to select Region and Server. Where your Database server will host.

![This](https://telegra.ph/file/69b46491ca2143438bc19.jpg)

<pre>Tips: Select the Nearest server from your location so it won't take long time to connect</pre>

* At last, Click on **Create Cluster**.

![This](https://telegra.ph/file/268f44ba7e1c25f77b1ec.jpg)

<pre>You have to wait for some time at this Page while your Database is being created. </pre>

* After Created, Click on **Network Access** (Can see this option under Security section of Above Image)

* You will see an option **Add IP Adress**. Click on that
![This](https://telegra.ph/file/8229e06fc38c87e8880ff.jpg)

* Now, **Allow Access From Anywhere**. Then **Confirm**

![This](https://telegra.ph/file/83c30132c4fc2b639f669.jpg)

<pre> Wait until the Status changes from Pending to Active </pre>

* Go Back to **Cluster** option and Click on **Connect**.

* Now. Fill any random **Username** and **Password**

<pre>Note: Don't use Special character in your Password like @#$% etc. </pre>

* After filled, Click on **Create MongoDB User**.

* There you are, Select **Choose a connection method**

* Choose **Connect Your Application**

* Now, Select **DRIVER** as <code>Python</code> and **VERSION** as <code>3.6 or later</code> then Copy the Database link Shown below

<pre>mongodb+srv://&lt;username&gt;:&lt;password&gt;@mongos0.example.com/&lt;dbname&gt;?retryWrites=true&w=majority</pre>

* Replace &lt;password&gt; with your given Password and &lt;dbname&gt; with "test" or "cluster0" and remove <> symbols.

**That's it**. You have got your **DATABASE_URL** Var value.


### 3. LOG_CHANNEL_ID

Here, You need Log Channel Id to get all logs and Traceback errors of your UserBot.

* Create a **Private Channel** on your Telegram.

* Type and send any Message on your channel.

* Now, Forward your Message to @ShowJsonBot.

* Bot will send you json formated data of your message.

* Find "forward_from_chat" section in the message. you'll see the "id" starting with <code>-100.....</code>

* Copy the id with included hyphen (<code> - </code>) and Paste into LOG_CHANNEL_ID Var.
>**Note**:- _Don't forget to add your [**Bot**](https://theuserge.github.io/deployment#2-bot-mode) as administrator in log channel._

**For more information... Watch this** [Video](https://youtu.be/M4T_BJvFqkc?t=1025)

##### ---- [Optional] ----

Instead of making Channel You can also create a Group to get your logs and This is the very easy way to get. Let's Do it 

* You just need to make a new **Private Group** on Telegram.

* Add @MissRose_Bot in your Private Group from Add Member > Search "@MissRose_Bot" and then Add.

* After added, Just type "/id" in the chat.

* You'll get the id of your channel or group.

> Note: Changing Group Type to Public may give you an issue in Userbot. To Fix this, Put Public group id in var.

## Non-Mandatory Vars
 
### 1. LOAD_UNOFFICIAL_PLUGINS

Userge has a plugin repository where extra plugins are available. A place collection of all the plugins for Userge UserBot made by awesome people who are not in Userge dev team. We saying this as [Unofficial Plugins](https://github.com/UsergeTeam/Userge-Plugins).

```bash
LOAD_UNOFFICIAL_PLUGINS = True
```

To load these all Plugins you have to set the var value `"True"` while deploying userbot. Alphabets case must be or lower case.

### 2. WORKERS

Set the number of workers count you want, Defaults are currently depends on CPU Cores, Basically, It's the number of CPU Core. Leave it as default and the default value is 4.

### 3. G_DRIVE_CLIENT_ID & G_DRIVE_CLIENT_SECRET

**This Vars is used for Google Drive Feature. If you want to download or upload your files and document into Google Drive. You must set this var value.**

So, Let's Start

* Go to [**console.developers.google.com**](https://console.developers.google.com/) and Sign In with your Account.

![gdrive client id and secret var](https://telegra.ph/file/2763b33134d486925ee4c.jpg)

* You'll see the Dashboard Page.

* Now, Search "Drive API" in the top of the Box.

* Select **Drive API** and **Enable** it.

![gdrive project name](https://telegra.ph/file/96e2a696183ea51f0e886.jpg)

* Give a Name of your Project and Click on **Create**.

![create credential](https://telegra.ph/file/e22bef29e3fff8e752760.jpg)

* At the Right Side, You'll see **Create Credentials** option. Click on it.

![oAuth consent screen](https://telegra.ph/file/a582c16d9c8d24a2846b7.jpg)

* Click on **OAuth consent screen** option.

![](https://telegra.ph/file/dec4a53a721811c35086e.jpg)

* Select User Type as **External** and **Create**

* **Give a Name** of your Application and **Save**

![gdrive oauth](https://telegra.ph/file/e3a3faa84eae7de5a20cd.jpg)

* You'll see **OAuth consent screen** dashboard page.

![publish your app](https://telegra.ph/file/b41e1a396662a9961247b.jpg)

* After that, Now time to **Publish your App** Click on that.

* then **Confirm**, Now start creating the Api Keys which we use in Userge.

![crendentials](https://telegra.ph/file/283fd1bee4c070d81a65d.jpg) 

* Now, Click on **Credentials**

![oauth client id](https://telegra.ph/file/998ef37a6f1602a68f94d.jpg) 

* Then, **Create Credentials** and Select **OAuth client ID**

![Select Desktop App](https://telegra.ph/file/b9f4a0114c61432de3d3f.jpg) 

* Choose **Desktop App** and Click on **Create**

![id created](https://telegra.ph/file/b7b01299c2dfc019936bf.jpg)

* That's it... You have got your both G_DRIVE_CLIENT_ID & G_DRIVE_CLIENT_SECRET Var.

### 4. G_DRIVE_IS_TD

If you are using Team Drive (TD) then set this value as `True`. Otherwise leave as it is default. To know more about TD, You can find it on Web.

### 5. G_DRIVE_INDEX_LINK

If you have created Google Drive Index, You can use it as well to output the Index Link after Uploading the file to Google Drive. Just fill your url into the value.

```bash
eg. https://example.example.workers.dev
```

### 6. DOWN_PATH

You can rename the directory of your downloads folder. by default all your files will be downloaded in "downloads" folder.

### 7. PREFERRED_LANGUAGE

Select your Preferred language. For example: If English value will be
```bash
en
```

### 8. CURRENCY_API

This var is used for Currency converter & Exchange Rate in Plugin. If you don't want this you can leave this var value blank.

* Go to [**free.currencyconverterapi.com**](https://free.currencyconverterapi.com).

![Free api](https://telegra.ph/file/ab0b4ce9e84355717d7cb.jpg)

* Click on **Get Your Free API Key**.

![currency api key](https://telegra.ph/file/08d143dbd9ed128d82a32.jpg)

* Now, Enter your Email Address, Check the Captcha.

* And last, Click on **Get Your Free API Key**.

That's It... Check your Email, You have received the API Key there. Confirm your Email Address and Fill the API Key in Value.

### 9. OCR_SPACE_API_KEY

OCR is used to read text from the images. You can also use OCR to read text from the image on Telegram from your Userbot. It helps you to copy texts from Images.

So, Let's start getting the value of this var

* Go to [**http://eepurl.com/bOLOcf**](http://eepurl.com/bOLOcf) and Fill your details.

* After fill, Click on **Subscribe**.

![ocr api](https://telegra.ph/file/4acadf356632fa10e27be.jpg)

* That's it, Check your Email Address to get your API Key.

* Copy API Key and Fill in the **OCR_SPACE_API_KEY** value.

### 10. WEATHER_DEFCITY

To know Weather detail of your City, State. This value is required with **OPEN_WEATHER_MAP** var to work, you can also skip it as it is not mandatory.

Add Default city value for weather details, 

```eg. Delhi, India```

### 11. SPAM_WATCH_API

Basically, It has a list of Spammer and they are listed in SpamWatch. If you use this var, It bans the SpamWatch banned users in the groups wherever you are at Admin or Owner post.

* Get SpamWatch API from [@SpamWatch](https://t.me/spamwatch) on Telegram.

### 12. OPEN_WEATHER_MAP

As, If you are going to use this userbot also for checking Weather detail on your current City, State. Then, this var value is required to be filled with **WEATHER_DEFCITY** var to work.

* To get Weather API, visit [**openweathermap.org**](https://openweathermap.org/).

![api weather](https://telegra.ph/file/1df0ca4a74c759f162d38.jpg) 

* When you open the url page, you'll see the **API** option on top.

![weather api key](https://telegra.ph/file/fad561412fa58ae5f6884.jpg)

* To Get API Key, You must **Sign Up** to the website.

![api key of weather](https://telegra.ph/file/67ff0730fe26eb7d5f36b.jpg)

* After successful SignUp, You'll see **API Keys** option, Click there.

![open weather api key](https://telegra.ph/file/7225b7fd50ec647a2481d.jpg)

* That's it... You have got your API Key.

### 13. REMOVE_BG_API_KEY

This API is used for the Removing the Background from Images (removebg module).

So, Let's start getting the value of this var

* Go to [**www.remove.bg/api**](https://www.remove.bg/api).

![remove bg](https://telegra.ph/file/6c874a5f9fc5c499446c0.jpg)

* Click on **Get API Key**, and **Sign Up** to the website. 

![remove backgroup api](https://telegra.ph/file/33758118d1a20b9f69203.jpg)

* Click on **API Key** tab option. Then Click on **Show**.

That's it... You have got your API Key.

### 14. G_DRIVE_PARENT_ID

You need to enter the Folder Id of Google Drive. If you want to use Google Drive module to Upload or Download files from your Userge userbot.

For detailed Guide for getting this value can be found [here](https://theuserge.github.io/faq.html#setup-gdrive-parent-id).

### 15. CMD_TRIGGER

Command Trigger needed to trigger your userbot to execute your command. This can be only set as one Symbol (Special Character)

```bash 
eg. !

```

### 16. SUDO_TRIGGER

SUDO Trigger also needed to trigger your userbot to execute command whoever you gave sudo permission to use your userbot or trigger your bot mode. This also can be only set as one Symbol (Special Character) but must be different from **CMD_TRIGGER** Var value.

```bash
eg. $
```

### 17. UPSTREAM_REPO

To use your Userge Userbot as default with all regular Updates and Patches also without customizing or modifying as your own choice this must be filled with Userge Main Repository URL in value.

```bash
https://github.com/UsergeTeam/Userge
```
#### For Customized or Modified Repository

If you plan to use this userbot with your own customized or modified code. You must fill your own Forked Userge Repository URL in UPSTREAM_REPO Var value.

### 18. FINISHED_PROGRESS_STR

To change the Progress Bar of Download and Uploads. You must fill Single text of filled bar line of character which can be shown in Finish bar.

You can Select any character from these listed sites:

* [https://coolsymbol.com/](https://coolsymbol.com/)

* [https://changaco.oy.lc/unicode-progress-bars/](https://changaco.oy.lc/unicode-progress-bars/)

* [https://text-symbols.com/](https://text-symbols.com/)

### 19. UNFINISHED_PROGRESS_STR

To change the Progress Bar of Download and Uploads. You must fill Single text of Unfinished bar line of character which can be shown in Unfinished bar.

You can Select any character from these listed sites:

* [https://coolsymbol.com/](https://coolsymbol.com/)

* [https://changaco.oy.lc/unicode-progress-bars/](https://changaco.oy.lc/unicode-progress-bars/)

* [https://text-symbols.com/](https://text-symbols.com/)

### 20. CUSTOM_PACK_NAME

While you use `.kang` command it will use your @username as Sticker Pack Name. You can set Custom Stick PAck name by filling this var value.

### 21. ALIVE_MEDIA

You can set your own custom media for `.alive` command.

Only these formats can be accepted for this Var value.

1. A link to message (Only Message link)

   ```bash
   https://t.me/theuserge/8
   ```  
2. Chat and Message id separated by `|`
   ```bash
   -1001454692938|8
   ```
3. A telegraph link
   ```bash
   https://telegra.ph/file/e912739114b56059a8cf3.jpg
   ```

### 22. INSTA_ID & INSTA_PASS

To **Download Private Posts** of Instagram, you have to fill this Var.

```bash 
eg. INSTA_ID = your instagram username
    INSTA_PASS = your instagram password
```

## Only If you are using Heroku to Host

### 23. HEROKU_API_KEY

To work some Heroku compatible modules this var value required to Access your account to use `.die`, `.usage` and `.sleep` commands.

You can get this value from:

[Heroku Account](http://dashboard.heroku.com/account)

### 24. HEROKU_APP_NAME

You have to Enter the app name which you gave to identify your userbot in Heroku.

### 25. CUSTOM_PLUGINS_REPO

Fork this [Repo](https://github.com/UsergeTeam/Custom-Plugins). Now just the add your's desired Custom plugins you want to install while starting the userge.
Copy your repo link and use it as value of above var. This way you haven't need to fork and edit unofficial plugins repo anymore.

## UserGe Modes

A mode defines the client, whether you want to use Userge on user account or as an Assistant bot.

This both also can be possible, Userge as a userbot and as an Assistant bot. You need to fill all vars for User Mode and Bot Mode. check [Dual Mode](https://theuserge.github.io/deployment#3-dual-mode)

### 1. USER MODE
 
UserGe as a userbot with a user account requires this var.

**HU_STRING_SESSION**

You can get this Var value using two ways.

The First Way:

* Get this using [**@genStr_Bot**](https://t.me/genStr_Bot)

The Second Way:

* Type `skip` in the value while deploying the bot.
* After deployed, You must off the Dyno from **Resource** tab.
* Then click on **More** in the top right corner and **Run Console**.
* In Console, Type `bash genStr` and fill the details.

For more details, check this video: on [11:04](https://youtu.be/M4T_BJvFqkc?t=664) then [19:40](https://youtu.be/M4T_BJvFqkc?t=1180) to [23:00](https://youtu.be/M4T_BJvFqkc?t=1380)

### 2. BOT MODE

UserGe as an Assistant bot to execute your commands only from the Bot.

 **BOT_TOKEN** & **OWNER_ID**

* **BOT_TOKEN** - Get it from [**@Botfather**](https://t.me/botfather) in Telegram.

* **OWNER_ID** - Your user id (not username) Get it by using command `/id` on the Group in the reply to your message where Rose Bot was added.

**Make Sure, you set up these settings while making bot via Bot Father.**
1. [Group privacy](https://t.me/usergeot/356150) - Turn this OFF
2. [Allow groups](https://t.me/usergeot/356614) - Turn this ON
3. [Inline mode](https://t.me/usergeot/354104) - Turn this ON
4. Add bot To your Log Channel

### 3. DUAL MODE

Use UserGe with both Userbot and Assistant bot.

* Fill both [USER MODE](https://theuserge.github.io/deployment#1-user-mode) and [BOT MODE](https://theuserge.github.io/deployment#2-bot-mode) vars values.
