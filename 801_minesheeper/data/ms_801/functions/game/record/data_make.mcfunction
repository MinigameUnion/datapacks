#> ms_801:game/record/data_make
# 記録用データ生成
# @internal

execute store result storage ms_801:record Data.Time int 1 run scoreboard players get $Tmp General_801
execute as @a[tag=MVP_801] run loot spawn 8000 0 0 loot ms_801:player_head
execute positioned 8000 0 0 run data modify storage ms_801:record Data.Player set from entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:player_head",tag:{801:1b}}}] Item.tag.SkullOwner.Name
execute positioned 8000 0 0 run kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:player_head",tag:{801:1b}}}]