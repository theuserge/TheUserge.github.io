# Deployment

## <u>Page Reference 

[**SETTING UP VARS**](https://github.com/UsergeTeam/Userge/wiki/Deployment#config-vars)

_DEPLOYING PART-_

[**WITH HEROKU**](https://github.com/UsergeTeam/Userge/wiki/Deployment#deploying-to-heroku--)

[**WITH DOCKER**](https://github.com/UsergeTeam/Userge/wiki/Deployment#deploying-with-docker-)

[**WITH GIT , PYTHON & PIP**](https://github.com/UsergeTeam/Userge/wiki/Deployment#deploying-with-gitpython--pip)
 

***

### <u>Config Vars

*Config vars are basically the variables which configures or modifies userbot's settings for functions which are the basic necessities of plugins.You have to set the proper mandatory vars to make It functional and to start basic features of bot.*<br>
*You can leave non mandatory vars for now and can add them later.*

### LIST OF Available VARS
_CLICK ANY VAR IN LIST TO GET ITS DETAILED DESCRIPTION_

**Mandatory Vars-**
*(Minimum required vars need to setup to make userbot functional.)*

1. [**API_ID** and **API_HASH**](https://github.com/UsergeTeam/Userge/wiki/Deployment#1-api_id-and-api_hash)

2. [**DATABASE_URL**](https://github.com/UsergeTeam/Userge/wiki/Deployment#2-database_url)

3. [**LOG_CHANNEL_ID**](https://github.com/UsergeTeam/Userge/wiki/Deployment#3-log_channel_id)

4. _VARS DEFINED FOR YOUR_ [**MODE**](https://github.com/UsergeTeam/Userge/wiki/Deployment#userge-modes)

**Non-Mandatory Vars-**
*(UserGe has many non-mandatory vars which are used for extra features)*

1. [**LOAD_UNOFFICIAL_PLUGINS**](https://github.com/UsergeTeam/Userge/wiki/Deployment#1-load_unofficial_plugins)

2. [**WORKERS**](https://github.com/UsergeTeam/Userge/wiki/Deployment#2-workers)

3. [**G_DRIVE_CLIENT_ID** *&* **G_DRIVE_CLIENT_SECRET**](https://github.com/UsergeTeam/Userge/wiki/Deployment#3-g_drive_client_id--g_drive_client_secret)

4. [**G_DRIVE_IS_TD**](https://github.com/UsergeTeam/Userge/wiki/Deployment#4-g_drive_is_td)

5. [**G_DRIVE_INDEX_LINK**](https://github.com/UsergeTeam/Userge/wiki/Deployment#5-g_drive_index_link)

6. [**DOWN_PATH**](https://github.com/UsergeTeam/Userge/wiki/Deployment#6-down_path)

7. [**PREFERRED_LANGUAGE**](https://github.com/UsergeTeam/Userge/wiki/Deployment#7-preferred_language)

8. [**CURRENCY_API**](https://github.com/UsergeTeam/Userge/wiki/Deployment#8-currency_api)

9. [**OCR_SPACE_API_KEY**](https://github.com/UsergeTeam/Userge/wiki/Deployment#9-ocr_space_api_key)

10. [**WEATHER_DEFCITY**](https://github.com/UsergeTeam/Userge/wiki/Deployment#10-weather_defcity)

11. [**SPAM_WATCH_API**](https://github.com/UsergeTeam/Userge/wiki/Deployment#11-spam_watch_api)

12. [**OPEN_WEATHER_MAP**](https://github.com/UsergeTeam/Userge/wiki/Deployment#12-open_weather_map)

13. [**REMOVE_BG_API_KEY**](https://github.com/UsergeTeam/Userge/wiki/Deployment#13-remove_bg_api_key)

14. [**G_DRIVE_PARENT_ID**](https://github.com/UsergeTeam/Userge/wiki/Deployment#14-g_drive_parent_id)

15. [**CMD_TRIGGER**](https://github.com/UsergeTeam/Userge/wiki/Deployment#15-cmd_trigger)

16. [**SUDO_TRIGGER**](https://github.com/UsergeTeam/Userge/wiki/Deployment#16-sudo_trigger) 

17. [**UPSTREAM_REPO**](https://github.com/UsergeTeam/Userge/wiki/Deployment#17-upstream_repo) 

18. [**FINISHED_PROGRESS_STR**](https://github.com/UsergeTeam/Userge/wiki/Deployment#18-finished_progress_str) 

19. [**UNFINISHED_PROGRESS_STR**](https://github.com/UsergeTeam/Userge/wiki/Deployment#19-unfinished_progress_str) 

20. [**CUSTOM_PACK_NAME**](https://github.com/UsergeTeam/Userge/wiki/Deployment#20-custom_pack_name) 

21. [**ALIVE_MEDIA**](https://github.com/UsergeTeam/Userge/wiki/Deployment#21-alive_media) 

22. [**INSTA_ID**](https://github.com/UsergeTeam/Userge/wiki/Deployment#22-insta_id) 

23. [**INSTA_PASS**](https://github.com/UsergeTeam/Userge/wiki/Deployment#23-insta_pass) 

24. [**HEROKU_API_KEY**](https://github.com/UsergeTeam/Userge/wiki/Deployment#24-heroku_api_key) 

25. [**HEROKU_APP_NAME**](https://github.com/UsergeTeam/Userge/wiki/Deployment#25-heroku_app_name) 

### **Branches in UserGE** [**REPO**](https://github.com/UsergeTeam/Userge)

1. **ALPHA** - *not stable , only for Devs for testing purposes.*
2. **BETA** - *pretty stable , regular updates & changes occur.*
3. **MASTER** - *very stable , "updates" can take a while & only merged from BETA after confirming No Bugs.*



***

#### 1. API_ID and API_HASH

a) **Go to** [**my.telegram.org**](https://my.telegram.org) **then enter your phone number with your country code.**

b) **After you are logged in click on Api Development Tools.**

c) **Enter Anything as app name and app short name, enter my.telegram.org in url section**

**Thats it** , **you"ll get your** **API_ID** *and* **API_HASH.**


#### 2. DATABASE_URL

a) **First Go to** [**cloud.mongodb.com**](https://cloud.mongodb.com) **then sign up there.**

b) **You will see an option `Build a Cluster`
Click there 👇👇**
![This](https://telegra.ph/file/46e58355fe5bf648c8108.jpg)

c) **Then you will see Plan selecting section, i have shown it below👇👇**
![This](https://telegra.ph/file/714afabd905531eedc275.jpg)
_Select free shared cluster plan._

d) **You will see region and server section, select all this shown below👇👇**
![This](https://telegra.ph/file/69b46491ca2143438bc19.jpg)
_Then click create cluster._

![This](
https://telegra.ph/file/268f44ba7e1c25f77b1ec.jpg)
_You have to wait for sometime at this page☝️☝️._

e) **After done click on network access(can see option under security section of above image)**

f) **You will see an access panel and select allow access from anywhere👇👇**
![This](https://telegra.ph/file/8229e06fc38c87e8880ff.jpg)

g) **Then click Confirm and wait for sometime till it gets done.**

h) **After done click on clusters again**

i) **Then click on connect👇👇**
![This](https://telegra.ph/file/83c30132c4fc2b639f669.jpg)

j) **Then enter anything as username and password but don't use special symbols like @#$ etc, click on create mongodb user.**

k) **Then select connect to cluster method then select and select python3.6 or later as verison then copy the url and replace password with your password and dbname with test.**

*Cool!! you have got your* **DATABASE_URL**_

**Make sure to replace password with your password and dbname with test :)** 

### 3. LOG_CHANNEL_ID
*for this just make a new **private** channel on telegram and get id of that channel and put it in the value along with -*

 `[Getting Channel ID]`
  You can get Channel ID by following methods:
   * Add `@MissRose_bot` and send `/id`.

                 OR

   * Send a message to Channel and click on that message » Select **Copy Link** » message link will look like this `https://t.me/22441677554/5 (https://t.me/{channel_id}/{message_id})` copy channel_id (i.e. `22441677554`) » add `-100` in starting of copied channel_id and paste it in vars. `[Example LOG ID: -10022441677554]` 
>**`NOTE`** - *While using [**BOT MODE or DUAL MODE**](https://github.com/UsergeTeam/Userge/wiki/Deployment#userge-modes) , make sure to add assistant bot to your log channel.*
---

## Non-Mandatory Vars
 
### 1. LOAD_UNOFFICIAL_PLUGINS

*Set the value to True if you like to use unofficial plugins*

### 2. WORKERS

*set the number of workers count you want, defaults are currently depends on cpu cores, So it will be sum of number of cpu cores and 4*

### 3. G_DRIVE_CLIENT_ID & G_DRIVE_CLIENT_SECRET

*These vars are used for gdrive features*

**So let's start getting values of these vars**

a) **Go to** [**https://console.developers.google.com/**](https://console.developers.google.com/)

b) **Sign in with your Google account**

c) **You will see a dashboard like this👇👇** 
![](https://telegra.ph/file/2763b33134d486925ee4c.jpg) 

d) **Search for Drive API and enable it**

e) **Then click on create project👇👇**

![](https://telegra.ph/file/cdc2b1ff2c4a7316b3c9e.jpg) 

f) **Write anything as name👇👇**

![](https://telegra.ph/file/96e2a696183ea51f0e886.jpg) 
**Click create👆👆**

g) **Click Create credentials👇👇**

![](https://telegra.ph/file/e22bef29e3fff8e752760.jpg) 

h) **Click QAuth consent screen👇👇**

![](https://telegra.ph/file/a582c16d9c8d24a2846b7.jpg) 

i) **Select external and click create👇👇**

![](https://telegra.ph/file/dec4a53a721811c35086e.jpg) 

j) **Enter anything as application name then click save**

**Then you will see a dashboard like this👇👇**

![](https://telegra.ph/file/e3a3faa84eae7de5a20cd.jpg) 

k) **Click credentials👇👇**

![](https://telegra.ph/file/283fd1bee4c070d81a65d.jpg) 

l) **Select QAuth Client id👇👇**

![](https://telegra.ph/file/998ef37a6f1602a68f94d.jpg) 

m) **Select desktop app and enter the name then click create👇👇**

![](https://telegra.ph/file/b9f4a0114c61432de3d3f.jpg) 

**Boom! You have got your client id and client secret👇👇**

![](https://telegra.ph/file/b7b01299c2dfc019936bf.jpg)

### 4. G_DRIVE_IS_TD

*Set it to True if your drive is TEAMDRIVE*

### 5. G_DRIVE_INDEX_LINK

*Enter your index link here if you want a sharable link for your drive files*

### 6. DOWN_PATH

*Set name to your working directory*

### 7. PREFERRED_LANGUAGE

*Your Languge ( ex: if english => 'en' )*

### 8. CURRENCY_API

**go to** [**https://free.currencyconverterapi.com**](https://free.currencyconverterapi.com)

*It is used for currency converter & exchange rate plugin*

**So let's start getting value of this var**

a) **Click on get your free api key👇👇**

![](https://telegra.ph/file/ab0b4ce9e84355717d7cb.jpg)

b) **Enter your email, Fill the captcha and click get your free api key👇👇**

![](https://telegra.ph/file/08d143dbd9ed128d82a32.jpg)

c) **Check your email inbox which you entered, you will get a confirmation mail with your api key, confirm your email and you can use your api key**

### 9. *Next var is* **OCR_SPACE_API_KEY**

**It is used for reading text from images (OCR) module**

**So let's start getting value of this var**

a) **Go to** [**http://eepurl.com/bOLOcf**](http://eepurl.com/bOLOcf) **and sign up**

b) **After that follow instructions given below in the image👇👇**

![](https://telegra.ph/file/4acadf356632fa10e27be.jpg) 

**Done you have got your OCR_SPACE_API_KEY**

### 10. WEATHER_DEFCITY 

**add default city for weather, eg- Delhi, India**

### 11. SPAM_WATCH_API

**It bans the spamwatch banned users in the groups wherever you are admin**

**Get SpamWatch API from <code>[**@SpamWatch**](https://t.me/spamwatch)</code> in Telegram**

### 12. OPEN_WEATHER_MAP

**You need to get Weather API From** [**https://openweathermap.org/**](https://openweathermap.org/)

**So let's start getting value of this var**

a) **You will see a dashboard like this after going to website, Click on API👇👇**

![](https://telegra.ph/file/1df0ca4a74c759f162d38.jpg) 

b) **Click on sign up and sign up there👇👇**

![](https://telegra.ph/file/fad561412fa58ae5f6884.jpg) 

c) **After Signing up Click on API keys👇👇**

![](https://telegra.ph/file/67ff0730fe26eb7d5f36b.jpg) 

d) **You have got your api key :) 👇👇**

![](https://telegra.ph/file/7225b7fd50ec647a2481d.jpg) 

### 13. REMOVE_BG_API_KEY

**This API is used for the removing background from image (removebg) module**

**So let's start getting value of this var**

a) **Go to** [**https://www.remove.bg/api**](https://www.remove.bg/api)

b) **Click on Get API key👇👇**

![](https://telegra.ph/file/6c874a5f9fc5c499446c0.jpg) 

c) **Click on Tools and API👇👇**

![](https://telegra.ph/file/426ccb3423eadde40009c.jpg) 

d) **Select API integration and click on API Docs👇👇**

![](https://telegra.ph/file/c307e1150338db0247b66.jpg) 

e) **Click Get API key👇👇**

![](https://telegra.ph/file/6c874a5f9fc5c499446c0.jpg) 

f) **Click show👇👇**

![](https://telegra.ph/file/33758118d1a20b9f69203.jpg) 

**Boom! You have got your api key**

### 14. G_DRIVE_PARENT_ID

**We need to enter the gdrive folder id for drive feature**

**For a detailed guide for getting value is** [**Here**](https://github.com/UsergeTeam/Userge/wiki/FAQs#4-what-is-parent-idfolder-id-in-gdrive-)



### 15. CMD_TRIGGER

**set command prefix**

### 16. SUDO_TRIGGER

**set command prefix for SUDO users**

### 17. UPSTREAM_REPO

**Set the value of this to https://github.com/UsergeTeam/Userge**

### 18. FINISHED_PROGRESS_STR

**single character for finished progress**

### 19. UNFINISHED_PROGRESS_STR

**single character for unfinished progress**

### 20. CUSTOM_PACK_NAME

**You can add custom name for your sticker pack**

### 21. ALIVE_MEDIA

**set your own custom media for .alive**   
Accepted formats for the Value of "ALIVE_MEDIA"

I) a link to message: https://t.me/theuserge/8   
II) chat and message id separated by |: -1005545442|84565**

   
### 22. INSTA_ID

**It is required for private post downloader**

**Enter your Instagram username**

### 23. INSTA_PASS

**It is also required for private post downloader**

**enter your Instagram password**

## Only if you are using Heroku 

### 24. HEROKU_API_KEY

**get it from http://dashboard.heroku.com/account**

### 25. HEROKU_APP_NAME

**Enter given app name to the heroku app**

## UserGe modes<br>
A mode defines the client , whether you wanna use userge on user account or as a assistant bot.<br>
Following this there can be three possible modes- (you need to fill all vars defined for your choosen mode) 

### 1. USER MODE
 
_UserGe as a userbot with user account_

**HU_STRING_SESSION**

_get this using_ [**https://GenUserGeString.usergeuserbot.repl.run**](https://GenUserGeString.usergeuserbot.repl.run) _or by running "bash genStr" in heroku console after deploying & fill it later._

### 2. BOT MODE

_UserGe as a assistant bot_

 **BOT_TOKEN & OWNER_ID**

_Get_ **BOT_TOKEN** _from_<code>[**@Botfather**](https://t.me/botfather)</code> **Telegram**

**OWNER_ID**-_Your user id (not username) Get it by running .ids in saved._

### 3. DUAL MODE

_Use UserGe as both user and bot_

_fill all USER MODE and BOT MODE vars_

## DEPLOYING TO HEROKU -

**STEPS**-
- *Choose a branch to deploy-* 1. [**MASTER**](https://dashboard.heroku.com/new?button-url=https%3A%2F%2Fgithub.com%2FUsergeTeam%2FUserge&template=https%3A%2F%2Fgithub.com%2FUsergeTeam%2FUserge%2Ftree%2Fmaster) 2. [**BETA**](https://dashboard.heroku.com/new?button-url=https%3A%2F%2Fgithub.com%2FUsergeTeam%2FUserge&template=https%3A%2F%2Fgithub.com%2FUsergeTeam%2FUserge%2Ftree%2Fbeta)<br>
- _FILL_ [**MANDATORY VARS**](https://github.com/UsergeTeam/Userge/wiki/Deployment#list-of-avaiable-vars)<br>
- *Hit DEPLOY , wait some time till deploying finished . After successfully deployed , click MANAGE APP>Go to RESOURCES section of heroku>Turn on Dyno._<br>*
- _Thats it. Now you can use your bot. Try via giving some commands i.e. .ping , .help in tg chat._<br>

_NOW YOU CAN ADD OTHER [**NON-MANDATORY VARS**](https://github.com/UsergeTeam/Userge/wiki/Deployment#list-of-avaiable-vars) AS PER YOUR NEEDS._<br>
Those vars are used by there respective plugins in userbot.

**How to add non-mandatory vars in heroku?**

*For a detailed guide on how to add non-mandatory vars,* **click** [**here**](https://t.me/UnofficialPluginsHelp/31)

## DEPLOYING WITH DOCKER 🐳



**Install docker**
- Follow the official docker [installation guide](https://docs.docker.com/engine/install/ubuntu/)

**Install Docker-compose**
- Easiest way to install docker-compose is <br>
```sudo pip install docker-compose```
- Also you can check other official methods of installing docker-compose [here](https://docs.docker.com/compose/install/)

**Run Userge**
- We dont need to clone the repo (yeah Docker-compose does that for us)
- Setup configs
    - Download the sample config file <br>
        - ```mkdir userge && cd userge```
        - ```wget https://raw.githubusercontent.com/UsergeTeam/Userge/alpha/config.env.sample -O config.env```
        - ```vim config.env```
    - Download the yml file for docker-compose
        - ```wget https://raw.githubusercontent.com/UsergeTeam/Userge/alpha/resources/docker-compose.yml```
- Finally start the bot <br>
```docker-compose up -d```
- The bot should be running now <br>
Check logs with ```docker-compose logs -f```

**How to stop the bot**
- Stop Command
    ```docker-compose stop```
    - This will just stop the containers. Built images won't be removed. So next time you can start with ``docker-compose start`` command <br>
    And it won't take time for building from scratch<br>
    
- Down command
    ```docker-compose down```
    - You will stop and delete the built images also. So next time you have to do ``docker-compose up -d`` to start the bot<br>
    
**Q&A**
- How to see logs <br>
    `docker-compose logs -f`
- How to update <br>
    `docker-compose up -d` <br>
    Changes will be fetched from git repo. You can change repo url from _docker-compose.yml_ file


 
 ## DEPLOYING WITH GIT,PYTHON & PIP.


`# clone the repo`<br>
`git clone https://github.com/UsergeTeam/Userge.git`<br>
`cd Userge`

`# create virtualenv`<br>
`virtualenv -p /usr/bin/python3 venv`<br>
`. ./venv/bin/activate`

`# install requirements`<br>
`pip install -r requirements.txt`

`# Create config.env as given config.env.sample and fill that`<br>
`cp config.env.sample config.env`

`# get string session and add it to config.env`<br>
`bash genStr`

`# finally run the Userge ;)`<br>
`bash run`

