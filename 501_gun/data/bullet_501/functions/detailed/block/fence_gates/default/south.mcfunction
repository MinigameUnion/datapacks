scoreboard players set #z max_501 5625
scoreboard players set #z min_501 4375

scoreboard players set #y max_501 9375
scoreboard players set #y min_501 3750
scoreboard players set #x max_501 6250
scoreboard players set #x min_501 3750
execute if score #x num_501 matches 3750..6250 if score #y num_501 matches 3750..9375 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 5625
scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
execute if score #HIT num_501 matches 0 if score #y num_501 matches 3750..5625 run function #bullet_501:detailed/hit
scoreboard players set #y max_501 9375
scoreboard players set #y min_501 7500
execute if score #HIT num_501 matches 0 if score #y num_501 matches 7500..9375 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 10000
scoreboard players set #y min_501 3125
scoreboard players set #x max_501 1250
scoreboard players set #x min_501 0
execute if score #HIT num_501 matches 0 if score #x num_501 matches 0..1250 if score #y num_501 matches 3125..10000 run function #bullet_501:detailed/hit
scoreboard players set #x max_501 10000
scoreboard players set #x min_501 8750
execute if score #HIT num_501 matches 0 if score #x num_501 matches 8750..10000 if score #y num_501 matches 3125..10000 run function #bullet_501:detailed/hit