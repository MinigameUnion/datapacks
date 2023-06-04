#> ms_801:trigger/shears_super
# super shears 使用時処理
# @internal

# 必須処理
advancement revoke @s only ms_801:shears_super
clear @s shears{801:1b,801Super:1b}
loot give @s loot ms_801:shears_super

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
tag @e[sort=nearest,type=sheep,tag=801,nbt={Sheared:1b},distance=..8] add SuperSheared_801

# 分岐
execute if score $GameInfo General_801 matches 2 if entity @e[type=sheep,tag=SuperSheared_801,tag=Board_801,tag=!Flagged_801,distance=..10] run function ms_801:game/open/super
execute as @e[type=sheep,tag=SuperSheared_801,distance=..10] run data merge entity @s {Sheared:0b}

# 後始末
tag @e[type=sheep,tag=SuperSheared_801,distance=..10] remove SuperSheared_801