scoreboard players set #x max_501 7500
scoreboard players set #x min_501 2500
scoreboard players set #y max_501 3750
scoreboard players set #y min_501 2500
scoreboard players set #z max_501 7500
scoreboard players set #z min_501 2500
execute if score #y num_501 matches 2500..3750 if score #x num_501 matches 2500..7500 if score #z num_501 matches 2500..7500 run function #bullet_501:detailed/hit

scoreboard players set #x max_501 6875
scoreboard players set #x min_501 3125
scoreboard players set #y max_501 8125
scoreboard players set #y min_501 3750
scoreboard players set #z max_501 6875
scoreboard players set #z min_501 3125
execute if score #x num_501 matches 3125..6875 if score #z num_501 matches 3125..6875 if score #y num_501 matches 3750..8125 run function #bullet_501:detailed/hit
