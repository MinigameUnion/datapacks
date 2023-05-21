scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
scoreboard players set #y min_501 0

execute if block ~ ~ ~ #bullet_501:fluid[level=7] run scoreboard players set #y max_501 1250
execute if block ~ ~ ~ #bullet_501:fluid[level=6] run scoreboard players set #y max_501 2500
execute if block ~ ~ ~ #bullet_501:fluid[level=5] run scoreboard players set #y max_501 3750
execute if block ~ ~ ~ #bullet_501:fluid[level=4] run scoreboard players set #y max_501 5000
execute if block ~ ~ ~ #bullet_501:fluid[level=3] run scoreboard players set #y max_501 6250
execute if block ~ ~ ~ #bullet_501:fluid[level=2] run scoreboard players set #y max_501 7500
execute if block ~ ~ ~ #bullet_501:fluid[level=1] run scoreboard players set #y max_501 8750
execute if block ~ ~ ~ #bullet_501:fluid[level=0] run scoreboard players set #y max_501 9375
execute if block ~ ~ ~ #bullet_501:fluid[level=8] run scoreboard players set #y max_501 10000