data modify entity @s Motion set from entity 0-0-0-0-2 Pos
execute store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 1000
execute store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 1000
execute store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 1000
data modify entity @s Fire set value 2s
scoreboard players operation @s match_id_502 = #ADMIN match_id_502
tag @s remove summoning_502