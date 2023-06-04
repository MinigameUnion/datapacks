#> clay_502:game/player/login
# @within
#   function clay_502:player/login

data modify storage clay_502:storage temp.compound set value {Item:{id:"minecraft:stone",Count:0b,Slot:-1b},result:[I;0,0]}
execute store result storage clay_502:storage temp.compound.Item.Slot byte 1 run scoreboard players get @s match_id_502

execute store result storage clay_502:storage temp.compound.result[0] int 1 if data storage clay_502:storage match.playing[]
data modify block 4992 0 2000 Items set from storage clay_502:storage match.playing
data modify block 4992 0 2000 Items append from storage clay_502:storage temp.compound.Item
data modify storage clay_502:storage match.playing set from block 4992 0 2000 Items
execute store result storage clay_502:storage temp.compound.result[1] int 1 if data storage clay_502:storage match.playing[]

execute store success score # num_502 run data modify storage clay_502:storage temp.compound.result[0] set from storage clay_502:storage temp.compound.result[1]
execute if score # num_502 matches 1 run function clay_502:game/player/return