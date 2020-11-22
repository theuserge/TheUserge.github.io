## Example Command

```python
from userge import userge, Message

@userge.on_cmd("test", about="help text to this command")
async def test_cmd(message: Message):
   # some other stuff
   await message.edit("testing...")
   # some other stuff
```

## Example Filter

```python
from userge import userge, Message, filters

@userge.on_filters(filters.me & filters.private)
async def test_filter(message: Message):
   # some other stuff
   await message.reply(f"you typed - {message.text}")
   # some other stuff
```
