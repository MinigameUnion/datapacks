scoreboard players set #x max_501 10000
scoreboard players set #x min_501 6250
scoreboard players set #z max_501 5625
scoreboard players set #z min_501 4375

scoreboard players set #y max_501 5625
scoreboard players set #y min_501 3750
execute if score #y num_501 matches 3750..5625 if score #HIT num_501 matches 0 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 9375
scoreboard players set #y min_501 7500
execute if score #y num_501 matches 7500..9375 if score #HIT num_501 matches 0 run function #bullet_501:detailed/hit