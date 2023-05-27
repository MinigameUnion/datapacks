#> utility_001:hologram_util/core/generate/text
# @within function utility_001:hologram_util/core/generate/base

#ベース召喚summon
    summon armor_stand ~ ~ ~ {CustomName:"\"\"",CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:[hologram_001,hologram_char_001]}
#HologramID
    execute store result score @e[tag=hologram_char_001,distance=..0.0001,limit=1] hologram_id_001 run data get storage utility_001:hologram_util TextGroup[-1].HologramID
#resolve
    execute if data storage utility_001:hologram_util TextGroup[-1].Setting{TextInterpret:0b} run loot spawn ~ 300 ~ loot utility_001:hologram/generate/resolve
    execute if data storage utility_001:hologram_util TextGroup[-1].Setting{TextInterpret:1b} run loot spawn ~ 300 ~ loot utility_001:hologram/generate/resolve.i
#Name
    data modify entity @e[tag=hologram_char_001,distance=..0.0001,limit=1] CustomName set from entity @e[type=item,distance=..0,y=300,limit=1] Item.tag.display.Lore[-1]
#resolveItem kill
    kill @e[type=item,distance=..0,y=300,limit=1]