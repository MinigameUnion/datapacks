#> mem_503:game/init
# @within
#   function mem_503:frame/interacted

data modify entity @s Fixed set value 1b
data remove entity @s Item.tag.display.Name

tag @s add trigger_503
tag @s add playing_503
tag @s add point_503

data modify storage mem_503:schedule summon append value {id:0}
scoreboard players set # id_503 0
scoreboard players operation # id_503 > @e[type=minecraft:marker,tag=playing_503] id_503
execute store result score @s id_503 store result storage mem_503:schedule summon[-1].id int 1 run scoreboard players add # id_503 1

execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["playing_503","admin_503","init_503"],data:{mem_503:{}}}
execute as @e[tag=init_503,distance=..1] positioned as @s run tp @s ~ ~ ~ ~ ~
scoreboard players operation @e[tag=init_503,distance=..1] id_503 = # id_503
execute store result entity @e[tag=init_503,distance=..1,limit=1] data.mem_503.frame.ItemRotation byte 1 run scoreboard players get @s num_503
data modify entity @e[tag=init_503,distance=..1,limit=1] data.mem_503.frame.Facing set from entity @s Facing
data modify entity @e[tag=init_503,distance=..1,limit=1] data.mem_503.frame.Item.tag set from entity @s Item.tag
data modify entity @e[tag=init_503,distance=..1,limit=1] data.mem_503.summon set from entity @s Item.tag.mem_503.summon
tag @e[tag=init_503,distance=..1] remove init_503

schedule function mem_503:schedule/summon 10t append