![Userge-image](https://telegra.ph/file/083ee09d368e0ee991996.jpg)

<pre>Hello wonderer!, Here is the way to start your journey to make your Telegram Account automated with UserGe. It is best Open-source Userbot for Telegram to simplify your daily task in convenient way.</pre>

## What is UserGe?

<b>[UserGe](https://github.com/usergeteam/userge)</b> is a Powerful , Pluggable Telegram UserBot written in [Python](https://www.python.org/) using [Pyrogram](https://github.com/pyrogram) by which you can Automate your Telegram account to work like as you want. It comes with salient and descriptive features which help you to manage your task with some easy command.

### Features:
*  Powerful and Very Useful built-in Plugins
*  Telegram Downloads/ Uploads
*  Google Drive Downloads/Upload Supported (Also Team Drive Supported!)
*  Zip/ Unzip/ tar/ Supported
*  Multi Archives Split/ Combine Supported
*  PM Permit/ AFK
*  Notes/ Filters
*  Plugin Manager
*  Group Management
*  Built-in help support (Use **.help**)
*  and Much more...

><b>**Note**:-</b> Users who wants to make custom plugins needs to have Moderate level of Python like Data-types, Functions, Iterators, Async/await syntaxes, Some modules and libraries like Pyrogram, requests, os, aiohttp, etc

## Table Of Contents
1. [Decorators](https://github.com/UsergeTeam/Userge/wiki/Decorators)
2. [Deployment](https://github.com/UsergeTeam/Userge/wiki/Deployment)
3. [Examples](https://github.com/UsergeTeam/Userge/wiki/Examples)
4. [How to Use (FAQs)](https://github.com/UsergeTeam/Userge/wiki/FAQs)

---

# Userge Callback Decorators

In addition to available [`Pyrogram Decorators`](https://docs.pyrogram.org/api/decorators), Userge comes with it's own custom decorators to handle callback functions.

## `@userge.on_cmd`

_Decorator for handling message containing command text and custom flags or command prefixes._

### Parameters:

~ $ ~ [**Mandatory**] ~ $ ~

* `command: str` => _Command name to be executed_ (without a command trigger prefix)

* `about: str | dict` => _Describe your function, this will be used to parse help strings. This can be a single string or a dictionary containing keys and values as mentioned below._

  * _`Options Available for about (dict):`_

    * `header: str`-> _title of your command_ [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/tools/alive.py#L31)

    * `description: str`-> _describe working of your command_ [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/utils/ocr.py#L52)

    * `flags: str | dict`-> _mention available flags in your command_ [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/fun/carbon.py#L25)

    * `options: str | dict`-> _mention available options that can be used with your comand_ [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/utils/filters.py#L128)

    * `types: str | list`-> _specific types with which your command can be triggered_ [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/utils/filters.py#L137)

    * `usage: str`-> _syntax with which user should trigger command_ [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/fun/autopic.py#L41)

    * `examples: str | list`-> _a example on how to use your command (a list containing examples is also supported)_ [`[Example]`](https://github.com/UsergeTeam/Userge/blob/b068461bd9a35d3ad28d5c484aabb29d55996705/userge/plugins/misc/utube.py#L29) [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/fun/carbon.py#L31)

    * `others: str`-> _additional note that you would like to give_ [`[Example]`](https://github.com/UsergeTeam/Userge/blob/b068461bd9a35d3ad28d5c484aabb29d55996705/userge/plugins/misc/utube.py#L30)

    * `wild card: str | dict | list`-> _this can be used to give customised title and description other than above defaults._ **Syntax**: _`the title you want to declare should be key of dictionary and value should be a string, or another dictionary or a list.`_ [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/fun/carbon.py#L34)

    > **`{tr}`**: **This option can be used in usage or examples to replace default `.` prefix of command trigger with custom user defined `Config.CMD_TRIGGER`**

~ $ ~ [**Optional**] ~ $ ~

* `group: int` => _The [group](https://docs.pyrogram.org/topics/more-on-updates#handler-groups) identifier of callable function. `[default: 0]`_

* `name: str` => _A name for your command. `[default: '']`_

* `trigger: str` => _A custom trigger for your command. Useful when you want commands to be triggered only by some specific triggers only. `[default: Config.CMD_TRIGGER]`_

* `filter_me: bool` => _Specify who can access this command. If `False` everyone can access this command else if `True` only userbot owner and sudo-users[*](https://github.com/UsergeTeam/Userge/wiki/Decorators#-works-only-if-command-is-allowed-to-be-triggered-by-sudo-users-via-addscmd) can access this command. `[default: True]`_

* `allow_private: bool` => _Specify if your command should work in private chats or not. `[default: True]`_

* `allow_bots: bool` => _Specify if your command is intended to work for bots chats. `[default: True]`_

* `allow_groups: bool` => _Specify if your command works in group chats. `[default: True]`_

* `allow_channels: bool` => _Specify if your command works in channels. `[default: True]`

> **All above `allow_*` keyword arguments are simply provided to prohibit specific chat type to ensure proper functioning of your callable function.**

* `only_admins: bool` => _Specify if your command (i.e. callable function) needs admin privileges in current chat (groups or channel) to be used. `[default: False]`_

* `allow_via_bot: bool` => _Userge supports bot account session too. And since due to some Telegram Restrictions bots can't trigger some API calls, and in order to avoid BotMethodInvaild error this argument can be passed as `True` to prohibit command execution if client is set to bot. `[default: True]`_

* `check_client: bool` => _By passing `True` userge will check if current client is bot or not. `[default: False]`_

* `check_downpath: bool` => _If `True`, userge will make sure that `Config.DOWN_PATH` exists. `[default: False]`_

* `check_change_info_perm: bool` => _Pass `True` to check if current userge client has Change Info Privileges in current chat before further execution of program. `[default: False]`_

* `check_edit_perm: bool` => _Pass `True` to check if current client has Edit Permission in current Channel before further execution. `[default: False]`_

* `check_delete_perm: bool` => _Pass `True` to check if current client has Delete Permissions in current chat. `[default: False]`_

* `check_restrict_perm: bool` => _Pass `True` to check if current client can Restrict Users in current chat. `[default: False]`_

* `check_invite_perm: bool` => _Pass `True` to check if current client has Privileges to Add Users to export a private invite link, etc... `[default: False]`_

* `check_pin_perm: bool` => _Pass `True` to check if current client has Privileges to Pin Messages in current chat. `[default: False]`_

* `prefix: str` => _Set a custom prefix to detect flags in a message. `[default: '-']`_

* `del_pre: bool` => _Pass `True` to get a `dict` of flags without prefix. `[default: False]`_

> ###### `[*]`: _works only if command is allowed to be triggered by sudo users via `addscmd`_

### Examples:

Here, we will be explaining how to use `on_cmd` briefly with some example which will try to cover almost all above mentioned parameters.

Firstly import `userge` client to your program as `on_cmd` can be accessed as an attribute of `userge` client.

```python

from userge import userge

```

Now we have imported userge client. For example let's make a echo command that will take an input and send it back to current chat.

```python

from userge import userge, Message

@userge.on_cmd("echo", about={

    'header': "Echo",

    'description': "Just give me some text and i will send it back",

    'usage': '{tr}echo [some text]',

    'examples': '{tr}echo Hi'})

async def echo(message: Message):  # Message is just for type hinting 

    text = message.input_str

    if text:

        await userge.send_message(message.chat.id, text)

    else:

        await message.edit("Give some text")

```

**Point to Remember**:

* Unlike pyrogram decorators, userge decorators return only one positional argument i.e `Message`. Just in case you want to use client methods you can either directly access them via imported `userge` (*as shown in above example*) **OR** use `client` attribute of modified `Message` class of userge (*as shown below*)

```python

await message.client.send_message(message.chat.id, text)

# using message.client is recommended as userge support dual client (i.e user client and bot client)

# by using this method it ensures that correct client makes request to API



```

Let's say, now we need our command to take input from replied message when a specific flag is passed then,

```python

from userge import userge, Message

@userge.on_cmd("echo", about={

    'header': "Echo",

    'description': "Give any text i will repeat it",

    'flags': {'-r': "I will take text from replied message if u send command with this flag"},

    'usage': "{tr}echo [flag (optional)]",

    'examples': ['{tr}echo Hi', '{tr}echo -r']})

async def echo(message: Message):

    text = message.input_str

    if '-r' in message.flags and message.reply_to_message:

        text = message.reply_to_message.text

    # ... rest of the code for echo.

```

However, now we want following modification in `echo` command:

* *It should work only in goups.*

* *Can only be triggered by `>` prefix.*

* *Change `-` flag prefix to `*`.*

* *Anyone can use this command*.

To do this all we need to do is take the same code and alter some parameters,

```python

# skipping to decorator 

@userge.on_cmd("echo", about={"header": "Echo"  # and so on ...

    },

    # To make it work only in groups we will have to disable channels, bot and private chats. 

    allow_private=False, allow_channels=False, allow_bots=False,

    # now to change trigger prefix

    trigger='>',

    # change flag prefix

    prefix='*',

    # allow all users to trigger command

    filter_me=False)

async def echo(message: Message):

    # ... rest of the code

```

That's all for `userge.on_cmd` for more Examples check out our Plugins in main repo or unofficial plugins repo


