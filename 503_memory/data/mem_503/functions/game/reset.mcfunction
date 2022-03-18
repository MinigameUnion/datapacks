#> mem_503:game/reset
# @within
#   function mem_503:game/force_finish
#   function mem_503:schedule/reset

execute store result score #Facing num_503 run data get entity @s data.mem_503.frame.Facing
execute store result score #ItemRotation num_503 run data get entity @s data.mem_503.frame.ItemRotation
execute if score #Facing num_503 matches 0 run summon item_frame ~ ~ ~ {Tags:["init_503"],Facing:0b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b}}
execute if score #Facing num_503 matches 1 run summon item_frame ~ ~ ~ {Tags:["init_503"],Facing:1b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b}}
execute if score #Facing num_503 matches 2 run summon item_frame ~ ~ ~ {Tags:["init_503"],Facing:2b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b}}
execute if score #Facing num_503 matches 3 run summon item_frame ~ ~ ~ {Tags:["init_503"],Facing:3b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b}}
execute if score #Facing num_503 matches 4 run summon item_frame ~ ~ ~ {Tags:["init_503"],Facing:4b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b}}
execute if score #Facing num_503 matches 5 run summon item_frame ~ ~ ~ {Tags:["init_503"],Facing:5b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b}}
execute as @e[tag=init_503,distance=..1] store result entity @s ItemRotation byte 1 run scoreboard players operation @s num_503 = #ItemRotation num_503
loot replace entity @e[tag=init_503,distance=..1] container.0 loot mem_503:game/reset
tag @e[tag=init_503,distance=..1] remove init_503

scoreboard players operation # id_503 = @s id_503
execute as @e[tag=playing_503] if score # id_503 = @s id_503 run kill @s