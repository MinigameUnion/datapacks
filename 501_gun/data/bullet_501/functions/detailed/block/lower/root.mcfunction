scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
scoreboard players set #y min_501 0

execute if block ~ ~ ~ minecraft:daylight_detector run scoreboard players set #y max_501 3750
execute if block ~ ~ ~ minecraft:enchanting_table run scoreboard players set #y max_501 7500
execute if block ~ ~ ~ minecraft:end_portal_frame run scoreboard players set #y max_501 8125
execute if block ~ ~ ~ minecraft:farmland run scoreboard players set #y max_501 9375
execute if block ~ ~ ~ minecraft:dirt_path run scoreboard players set #y max_501 9375
execute if block ~ ~ ~ minecraft:stonecutter run scoreboard players set #y max_501 5625
execute if block ~ ~ ~ #bullet_501:redstones run scoreboard players set #y max_501 1250
execute if block ~ ~ ~ #bullet_501:carpets run scoreboard players set #y max_501 625