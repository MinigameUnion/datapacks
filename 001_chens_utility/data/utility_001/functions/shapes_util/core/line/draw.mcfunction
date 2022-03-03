#> utility_001:shapes_util/core/line/draw
# @internal

scoreboard players reset #c-max utility_001
scoreboard players reset #particle-distance utility_001
execute store result score #from-X utility_001 run data get entity 0-0-1-0-0 Pos[0] 1000
execute store result score #from-Y utility_001 run data get entity 0-0-1-0-0 Pos[1] 1000
execute store result score #from-Z utility_001 run data get entity 0-0-1-0-0 Pos[2] 1000
execute store result score #to-X utility_001 run data get entity 0-0-1-0-1 Pos[0] 1000
execute store result score #to-Y utility_001 run data get entity 0-0-1-0-1 Pos[1] 1000
execute store result score #to-Z utility_001 run data get entity 0-0-1-0-1 Pos[2] 1000
execute at 0-0-1-0-0 facing entity 0-0-1-0-1 feet positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp 0-0-1-0-2 ~ ~ ~ ~ ~
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
scoreboard players operation #particle-distance utility_001 > #to-X utility_001
scoreboard players operation #particle-distance utility_001 > #to-Y utility_001
scoreboard players operation #particle-distance utility_001 > #to-Z utility_001
scoreboard players operation #particle-distance utility_001 *= #10000 num_000
scoreboard players operation #particle-distance utility_001 /= #c-max utility_001
scoreboard players operation #particle-distance utility_001 /= $count shape_input_001
execute as 0-0-1-0-0 run scoreboard players operation @s utility_001 = #particle-distance utility_001
execute as 0-0-1-0-0 at @s facing entity 0-0-1-0-1 feet run tp @s ~ ~ ~ ~ ~
scoreboard players set #tp-count utility_001 0
execute as 0-0-1-0-0 at @s run function utility_001:shapes_util/core/line/recursive