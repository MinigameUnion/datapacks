execute store result score @s e_602 run tag @e[sort=nearest,tag=tile_602,tag=!execute_602,distance=..1.0] add c_execute_602
execute if score @s e_602 matches 2.. run tag @e[sort=nearest,tag=tile_602,distance=..1.0] add crowed_602

execute if score $602 gamemode_602 matches 1 run function ats_602:unit/type/grass_eater
execute if score $602 gamemode_602 matches 2..3 run function ats_602:unit/type/generic
execute if entity @s[tag=!stop_602] if score @s e1_602 = @s e2_602 run function ats_602:unit/hit/main
execute if entity @s[scores={a_602=1..}] rotated as @s rotated ~ 0 unless block ^ ^ ^0.6 minecraft:air run function ats_602:unit/rot/main
execute if entity @s[scores={a_602=1..}] rotated as @s rotated ~ 0 run teleport @s ^ ^ ^0.1 ~ ~

scoreboard players remove @s a_602 1
execute if entity @s[scores={a_602=1..}] positioned as @s rotated as @s run function ats_602:unit/0
