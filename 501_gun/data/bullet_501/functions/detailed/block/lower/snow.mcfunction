scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
scoreboard players set #y min_501 0

execute if block ~ ~ ~ minecraft:snow[layers=1] run scoreboard players set #y max_501 1250
execute if block ~ ~ ~ minecraft:snow[layers=2] run scoreboard players set #y max_501 2500
execute if block ~ ~ ~ minecraft:snow[layers=3] run scoreboard players set #y max_501 3750
execute if block ~ ~ ~ minecraft:snow[layers=4] run scoreboard players set #y max_501 5000
execute if block ~ ~ ~ minecraft:snow[layers=5] run scoreboard players set #y max_501 6250
execute if block ~ ~ ~ minecraft:snow[layers=6] run scoreboard players set #y max_501 7500
execute if block ~ ~ ~ minecraft:snow[layers=7] run scoreboard players set #y max_501 8750
execute if block ~ ~ ~ minecraft:snow[layers=8] run scoreboard players set #y max_501 10000