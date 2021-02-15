function gun_501:spread/set
function gun_501:spread/circle

execute store result entity 0-0-1f5-0-0 Pos[0] double 0.01 run scoreboard players get #X spread_501
execute store result entity 0-0-1f5-0-0 Pos[1] double 0.01 run scoreboard players get #Y spread_501
execute store result entity 0-0-1f5-0-0 Pos[2] double 0.01 run scoreboard players get #Z spread_501

execute as 0-0-1f5-0-0 positioned 0.0 0.0 0.0 anchored feet facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

data modify storage gun_501:temp Rotation set from entity 0-0-1f5-0-0 Rotation