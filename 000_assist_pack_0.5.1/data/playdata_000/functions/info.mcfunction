#> playdata_000:info
# @within
#   function playdata_000:**

tellraw @s ["",{"text":"・プレイデータ情報"}]
tellraw @s ["",{"text":" "},{"text": " ID ","color": "gray"},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"nbt": "world.playdata","storage": "playdata:storage","interpret": true,"color": "gray"}]
tellraw @s ["",{"text":" "},{"text": " Minecraft "},{"nbt": "world.minecraft.string","storage": "playdata:storage","interpret": true}]
tellraw @s ["",{"text":" "},{"text": " MapVer "},{"text":" "},{"text":" "},{"text":" "},{"nbt": "world.version","storage": "playdata:storage","interpret": true}]
