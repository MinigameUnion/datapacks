#> clay_502:clay/motion
# @within
#   function clay_502:clay/shoot

#data modify entity @s Motion set from entity 0-0-0-0-2 Pos
execute store result entity @s Motion[0] double 0.001 run data get entity 0-0-0-0-2 Pos[0] 1000
execute store result entity @s Motion[1] double 0.001 run data get entity 0-0-0-0-2 Pos[1] 1000
execute store result entity @s Motion[2] double 0.001 run data get entity 0-0-0-0-2 Pos[2] 1000
damage @s 0.0 minecraft:out_of_world
scoreboard players operation @s match_id_502 = #ADMIN match_id_502
tag @s remove summoning_502