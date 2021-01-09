#> utility_001:shapes_util/core/circle/draw
# @internal

execute if score $ellipse-modifier shape_input_001 matches 0 run scoreboard players set $ellipse-modifier shape_input_001 100
execute unless score $ellipse-modifier shape_input_001 = $ellipse-modifier shape_input_001 run scoreboard players set $ellipse-modifier shape_input_001 100
execute as 0-0-1-0-3 run scoreboard players operation @s utility_001 = $start shape_input_001
execute as 0-0-1-0-3 unless score $ellipse-modifier shape_input_001 matches 100 run scoreboard players operation @s utility_001 -= $ellipse-rotate shape_input_001
execute as 0-0-1-0-3 unless score $ellipse-modifier shape_input_001 matches 100 run scoreboard players operation @s utility_001 %= #360*10 num_000
execute as 0-0-1-0-3 run scoreboard players operation @s utility_001 *= #1000 num_000
execute as 0-0-1-0-3 at @s rotated 0 0 run function utility_001:shapes_util/core/master/util/rotate/22
scoreboard players set #particle-distance utility_001 3600000
scoreboard players operation #particle-distance utility_001 /= $count shape_input_001
execute store result score #center-X utility_001 run data get entity 0-0-1-0-2 Pos[0] 100
execute store result score #center-Y utility_001 run data get entity 0-0-1-0-2 Pos[1] 100
execute store result score #center-Z utility_001 run data get entity 0-0-1-0-2 Pos[2] 100
execute as 0-0-1-0-3 run scoreboard players operation @s utility_001 = #particle-distance utility_001
scoreboard players set #tp-count utility_001 0
execute as 0-0-1-0-3 at @s run function utility_001:shapes_util/core/circle/recursive