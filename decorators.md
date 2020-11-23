# Userge Callback Decorators

In addition to available [`Pyrogram Decorators`](https://docs.pyrogram.org/api/decorators), Userge comes with it's own custom decorators to handle callback functions.

## `@userge.on_cmd`

Decorator for handling message containing command text and custom flags or command prefixes.

### Parameters:

~ $ ~ [**Mandatory**] ~ $ ~

* `command: str` Command name to be executed (without a command trigger prefix)

* `about: str | dict` Describe your function, this will be used to parse help strings. This can be a single string or a dictionary containing keys and values as mentioned below.

  * **Options Available for about (dict):**

    * `header: str` Title of your command [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/tools/alive.py#L31)

    * `description: str` Describe working of your command [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/utils/ocr.py#L52)

    * `flags: str | dict` Mention available flags in your command [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/fun/carbon.py#L25)

    * `options: str | dict` Mention available options that can be used with your comand [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/utils/filters.py#L128)

    * `types: str | list` Specific types with which your command can be triggered [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/utils/filters.py#L137)

    * `usage: str` Syntax with which user should trigger command [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/fun/autopic.py#L41)

    * `examples: str | list` A example on how to use your command (a list containing examples is also supported) [`[Example]`](https://github.com/UsergeTeam/Userge/blob/b068461bd9a35d3ad28d5c484aabb29d55996705/userge/plugins/misc/utube.py#L29) [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/fun/carbon.py#L31)

    * `others: str` Additional note that you would like to give [`[Example]`](https://github.com/UsergeTeam/Userge/blob/b068461bd9a35d3ad28d5c484aabb29d55996705/userge/plugins/misc/utube.py#L30)

    * `wild card: str | dict | list` This can be used to give customised title and description other than above defaults. **Syntax**: The title you want to declare should be key of dictionary and value should be a string, or another dictionary or a list. [`[Example]`](https://github.com/UsergeTeam/Userge/blob/beta/userge/plugins/fun/carbon.py#L34)

    > **`{tr}`**: This option can be used in usage or examples to replace default **`.`** prefix of command trigger with custom user defined **`Config.CMD_TRIGGER`**

~ $ ~ [**Optional**] ~ $ ~

* `group: int` The [group](https://docs.pyrogram.org/topics/more-on-updates#handler-groups) identifier of callable function. `[default: 0]`

* `name: str` A name for your command. `[default: '']`

* `trigger: str` A custom trigger for your command. Useful when you want commands to be triggered only by some specific triggers only. `[default: Config.CMD_TRIGGER]`

* `filter_me: bool` Specify who can access this command. If `False` everyone can access this command else if `True` only userbot owner and sudo-users[*](https://github.com/UsergeTeam/Userge/wiki/Decorators#-works-only-if-command-is-allowed-to-be-triggered-by-sudo-users-via-addscmd) can access this command. `[default: True]`

* `allow_private: bool` Specify if your command should work in private chats or not. `[default: True]`

* `allow_bots: bool` Specify if your command is intended to work for bots chats. `[default: True]`

* `allow_groups: bool` Specify if your command works in group chats. `[default: True]`

* `allow_channels: bool` Specify if your command works in channels. `[default: True]`

> All above **`allow_*`** keyword arguments are simply provided to prohibit specific chat type to ensure proper functioning of your callable function.

* `only_admins: bool` Specify if your command (i.e. callable function) needs admin privileges in current chat (groups or channel) to be used. `[default: False]`

* `allow_via_bot: bool` Userge supports bot account session too. And since due to some Telegram Restrictions bots can't trigger some API calls, and in order to avoid BotMethodInvaild error this argument can be passed as `True` to prohibit command execution if client is set to bot. `[default: True]`

* `check_client: bool` By passing `True` userge will check if current client is bot or not. `[default: False]`

* `check_downpath: bool` If `True`, userge will make sure that `Config.DOWN_PATH` exists. `[default: False]`

* `check_change_info_perm: bool` Pass `True` to check if current userge client has Change Info Privileges in current chat before further execution of program. `[default: False]`

* `check_edit_perm: bool` Pass `True` to check if current client has Edit Permission in current Channel before further execution. `[default: False]`

* `check_delete_perm: bool` Pass `True` to check if current client has Delete Permissions in current chat. `[default: False]`

* `check_restrict_perm: bool` Pass `True` to check if current client can Restrict Users in current chat. `[default: False]`

* `check_invite_perm: bool` Pass `True` to check if current client has Privileges to Add Users to export a private invite link, etc... `[default: False]`

* `check_pin_perm: bool` Pass `True` to check if current client has Privileges to Pin Messages in current chat. `[default: False]`

* `prefix: str` Set a custom prefix to detect flags in a message. `[default: '-']`

* `del_pre: bool` Pass `True` to get a `dict` of flags without prefix. `[default: False]`

> **`[*]`**: Works only if command is allowed to be triggered by sudo users via **`addscmd`**

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

* It should work only in goups.
* Can only be triggered by `>` prefix.
* Change `-` flag prefix to `*`.
* Anyone can use this command.

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

That's all for `userge.on_cmd` for more Examples check out our Plugins in main repo or unofficial plugins repository


## `@userge.on_filters`

Decorator for handling filters.

### Parameters:

~ $ ~ [**Mandatory**] ~ $ ~

* `filters: pyrogram.filters` One or more pyrogram filters.

~ $ ~ [**Optional**] ~ $ ~

#### Same as in `on_cmd`

* `group: int`
* `allow_private: bool`
* `allow_bots: bool`
* `allow_groups: bool`
* `allow_channels: bool`
* `only_admins: bool`
* `allow_via_bot: bool`
* `check_client: bool` `[default: True]`
* `check_downpath: bool`
* `check_change_info_perm: bool`
* `check_edit_perm: bool`
* `check_delete_perm: bool`
* `check_restrict_perm: bool`
* `check_invite_perm: bool`
* `check_pin_perm: bool`

### Examples:

Lets make a simple programme to detect incoming `audio` and `video` files in any chat
but not in channels. So ...

```python

from userge import filters, Message

@userge.on_filters(filters.audio | filters.video, allow_channels=False)
async def my_filter(message: Message):
    if message.audio:
        m_type = "audio"
    else:
        m_type = "video"
    await message.reply(f"{m_type} detected!")

```

Now lets optimize it for a specific chat. Let say i want to filter from `@usergeot`.
So we only need to add extra filter for filter that chat.

```python

from userge import filters, Message

@userge.on_filters(filters.chat(['@usergeot']) & (filters.audio | filters.video))
async def my_filter(message: Message):
    # rest same

```

That's all for `userge.on_filters` for more Examples check out our Plugins in main repo or unofficial plugins repository
