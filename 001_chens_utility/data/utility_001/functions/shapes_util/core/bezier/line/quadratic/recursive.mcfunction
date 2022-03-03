#> utility_001:shapes_util/core/bezier/line/quadratic/recursive
# @internal

execute as 0-0-1-0-0 at @s run function utility_001:shapes_util/core/master/util/move/31
execute as 0-0-1-0-5 at @s run function utility_001:shapes_util/core/master/util/move/31
scoreboard players reset #c-max utility_001
execute store result score #from-X utility_001 run data get entity 0-0-1-0-0 Pos[0] 1000
execute store result score #from-Y utility_001 run data get entity 0-0-1-0-0 Pos[1] 1000
execute store result score #from-Z utility_001 run data get entity 0-0-1-0-0 Pos[2] 1000
execute store result score #to-X utility_001 run data get entity 0-0-1-0-5 Pos[0] 1000
execute store result score #to-Y utility_001 run data get entity 0-0-1-0-5 Pos[1] 1000
execute store result score #to-Z utility_001 run data get entity 0-0-1-0-5 Pos[2] 1000
execute at 0-0-1-0-0 facing entity 0-0-1-0-5 feet positioned 0.0 0.0 0.0 run tp 0-0-1-0-2 ^ ^ ^1 ~ ~
execute store result score #c-X utility_001 run data get entity 0-0-1-0-2 Pos[0] 1000
execute store result score #c-Y utility_001 run data get entity 0-0-1-0-2 Pos[1] 1000
execute store result score #c-Z utility_001 run data get entity 0-0-1-0-2 Pos[2] 1000
scoreboard players operation #to-X utility_001 -= #from-X utility_001
scoreboard players operation #to-Y utility_001 -= #from-Y utility_001
scoreboard players operation #to-Z utility_001 -= #from-Z utility_001
execute if score #to-X utility_001 matches ..-1 run scoreboard players operation #to-X utility_001 *= #-1 num_000
execute if score #to-Y utility_001 matches ..-1 run scoreboard players operation #to-Y utility_001 *= #-1 num_000
execute if score #to-Z utility_001 matches ..-1 run scoreboard players operation #to-Z utility_001 *= #-1 num_000
execute if score #c-X utility_001 matches ..-1 run scoreboard players operation #c-X utility_001 *= #-1 num_000
execute if score #c-Y utility_001 matches ..-1 run scoreboard players operation #c-Y utility_001 *= #-1 num_000
execute if score #c-Z utility_001 matches ..-1 run scoreboard players operation #c-Z utility_001 *= #-1 num_000
scoreboard players operation #c-max utility_001 > #c-X utility_001
scoreboard players operation #c-max utility_001 > #c-Y utility_001
scoreboard players operation #c-max utility_001 > #c-Z utility_001
execute as 0-0-1-0-2 run scoreboard players operation @s utility_001 > #to-X utility_001
execute as 0-0-1-0-2 run scoreboard players operation @s utility_001 > #to-Y utility_001
execute as 0-0-1-0-2 run scoreboard players operation @s utility_001 > #to-Z utility_001
execute as 0-0-1-0-2 run scoreboard players operation @s utility_001 *= #10000 num_000
execute as 0-0-1-0-2 run scoreboard players operation @s utility_001 /= #c-max utility_001
execute as 0-0-1-0-2 run scoreboard players operation @s utility_001 /= $count shape_input_001
execute as 0-0-1-0-2 run scoreboard players operation @s utility_001 *= #t utility_001
execute at 0-0-1-0-0 facing entity 0-0-1-0-5 feet run function utility_001:shapes_util/core/master/util/move/31
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[shape_output_001,shape_unfinished_001]}
execute facing entity @s feet run tp @e[type=area_effect_cloud,tag=shape_output_001,tag=shape_unfinished_001,tag=!shape_temp_001,distance=..0.0001,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[type=area_effect_cloud,tag=shape_output_001,tag=shape_unfinished_001,tag=!shape_temp_001,distance=..0.0001,limit=1] shape_summon_001 = #summon-count utility_001
scoreboard players add #summon-count utility_001 1
scoreboard players add #t utility_001 1
execute as 0-0-1-0-0 run scoreboard players operation @s utility_001 = #distance-a utility_001
execute as 0-0-1-0-5 run scoreboard players operation @s utility_001 = #distance-b utility_001
execute if score $count shape_input_001 >= #t utility_001 at 0-0-1-0-2 run function utility_001:shapes_util/core/bezier/line/quadratic/recursive