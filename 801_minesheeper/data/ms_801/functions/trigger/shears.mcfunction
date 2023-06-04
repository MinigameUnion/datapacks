#> ms_801:trigger/shears
# shears 使用時処理
# @internal

# 必須処理
advancement revoke @s only ms_801:shears
clear @s shears{801:1b,801Super:0b}
loot give @s loot ms_801:shears

# ドロップした羊毛を削除
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:white_wool"}},nbt=!{Item:{tag:{801:1b}}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:orange_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:magenta_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:lime_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:pink_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:gray_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:cyan_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:purple_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:blue_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:brown_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:green_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:red_wool"}},distance=..50]
execute positioned 8000 10 0 run kill @e[type=item,nbt={Item:{id:"minecraft:black_wool"}},distance=..50]

# 羊にtag付与
tag @e[sort=nearest,type=sheep,tag=801,nbt={Sheared:1b},distance=..8] add Sheared_801

# 分岐
execute if score $GameInfo General_801 matches 0 if entity @e[type=sheep,tag=Sheared_801,tag=Setting_801] run function ms_801:setting/triggered_shears
execute if score $GameInfo General_801 matches 1..2 if entity @e[type=sheep,tag=Sheared_801,tag=Board_801] run function ms_801:game/open/triggered
execute if score $GameInfo General_801 matches 1.. if entity @e[type=sheep,tag=Sheared_801,tag=End_801] run function ms_801:game/end/triggered
execute if score $GameInfo General_801 matches -1 if entity @e[type=sheep,tag=Sheared_801,tag=Game_801] run function ms_801:game/end/triggered
execute if entity @e[type=sheep,tag=Sheared_801,tag=Exit_801] run function ms_801:leave
execute unless score $GameInfo General_801 matches -1..2 as @e[type=sheep,tag=Sheared_801] run data merge entity @s {Sheared:0b}

# 後始末
tag @e[type=sheep,tag=Sheared_801,distance=..10] remove Sheared_801