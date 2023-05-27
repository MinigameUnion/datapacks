execute store result score @s e_602 if entity @e[sort=nearest,tag=tile_602,distance=..1.3]
execute store result score $602 a2_602 if entity @e[sort=nearest,tag=tile_602,distance=..4.0]
scoreboard players operation @s e_602 < $602 a2_602
scoreboard players remove @s e_602 1

tag @e[sort=nearest,tag=tile_602,tag=!execute_602,distance=..1.3] add c_execute_602

execute if score @s e_602 matches 2.. run tag @s add crowding_602
execute unless entity @s[tag=hit_602] run function ats_602:unit/hit/main

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s b_602

execute if score $602 gamemode_602 matches 1 run function ats_602:unit/type/grass_eater
execute if score $602 gamemode_602 matches 2..3 run function ats_602:unit/type/generic
execute if entity @s[scores={a_602=1..}] rotated as @s rotated ~ 0 unless block ^ ^ ^0.6 minecraft:air run function ats_602:unit/rot/main
execute if entity @s[scores={a_602=1..}] rotated as @s rotated ~ 0 run teleport @s ^ ^ ^0.1 ~ ~

scoreboard players remove @s a_602 1

execute unless score @s e_602 matches 1.. run function ats_602:unit/post
execute if entity @s[scores={a_602=1..}] positioned as @s rotated as @s run function ats_602:unit/0