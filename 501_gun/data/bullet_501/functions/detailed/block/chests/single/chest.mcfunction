
scoreboard players set #x max_501 9375
scoreboard players set #x min_501 625
scoreboard players set #y max_501 8750
scoreboard players set #y min_501 0
scoreboard players set #z max_501 9375
scoreboard players set #z min_501 625
execute if score #HIT num_501 matches 0 if score #x num_501 matches 625..9375 if score #z num_501 matches 625..9375 if score #y num_501 matches 0..8750 run function #bullet_501:detailed/hit