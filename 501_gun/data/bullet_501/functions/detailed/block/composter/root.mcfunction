scoreboard players set #type property_501 7
execute if block ~ ~ ~ minecraft:composter[level=0] run scoreboard players set #type property_501 0
execute if block ~ ~ ~ minecraft:composter[level=1] run scoreboard players set #type property_501 1
execute if block ~ ~ ~ minecraft:composter[level=2] run scoreboard players set #type property_501 2
execute if block ~ ~ ~ minecraft:composter[level=3] run scoreboard players set #type property_501 3
execute if block ~ ~ ~ minecraft:composter[level=4] run scoreboard players set #type property_501 4
execute if block ~ ~ ~ minecraft:composter[level=5] run scoreboard players set #type property_501 5
execute if block ~ ~ ~ minecraft:composter[level=6] run scoreboard players set #type property_501 6

scoreboard players set #y property_501 1250
scoreboard players operation #y property_501 *= #type property_501
scoreboard players add #y property_501 625