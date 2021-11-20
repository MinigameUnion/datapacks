#> gun_501:spread/get_facing
# @within
#   function gun_501:spread/wobble

execute store result entity @s Pos[0] double 0.01 run scoreboard players get #X spread_501
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #Y spread_501
execute store result entity @s Pos[2] double 0.01 run scoreboard players get #Z spread_501

execute positioned 0.0 0.0 0.0 anchored feet facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

data modify storage gun_501:temp Rotation set from entity @s Rotation
data modify entity @s Pos set from storage gun_501:temp Pos