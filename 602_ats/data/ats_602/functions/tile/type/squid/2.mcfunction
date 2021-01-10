scoreboard players set #RANGE num_000 35999
function tool_000:random
scoreboard players operation @s b_602 = #RANDOM num_000
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s b_602
