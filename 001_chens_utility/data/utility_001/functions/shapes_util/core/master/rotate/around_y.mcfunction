#> utility_001:shapes_util/core/master/rotate/around_y
# @internal

execute store result entity 0-0-1-0-4 Rotation[0] float -0.1 run scoreboard players get $ellipse-rotate shape_input_001
execute at 0-0-1-0-4 positioned 0.0 0.0 0.0 run tp 0-0-1-0-4 ^ ^ ^1
execute store result score #sin utility_001 run data get entity 0-0-1-0-4 Pos[0] -10000
execute store result score #cos utility_001 run data get entity 0-0-1-0-4 Pos[2] 10000
scoreboard players operation #vexX utility_001 = #particle-pos-X utility_001
scoreboard players operation #vexY utility_001 = #particle-pos-Z utility_001
scoreboard players operation #X utility_001 = #vexX utility_001
scoreboard players operation #X utility_001 *= #cos utility_001
scoreboard players operation #temp utility_001 = #vexY utility_001
scoreboard players operation #temp utility_001 *= #sin utility_001
scoreboard players operation #X utility_001 -= #temp utility_001
scoreboard players operation #Y utility_001 = #vexX utility_001
scoreboard players operation #Y utility_001 *= #sin utility_001
scoreboard players operation #temp utility_001 = #vexY utility_001
scoreboard players operation #temp utility_001 *= #cos utility_001
scoreboard players operation #Y utility_001 += #temp utility_001
scoreboard players operation #X utility_001 /= #10000 num_000
scoreboard players operation #Y utility_001 /= #10000 num_000
scoreboard players operation #particle-pos-X utility_001 = #X utility_001
scoreboard players operation #particle-pos-Z utility_001 = #Y utility_001