scoreboard players set #z max_501 5625
scoreboard players set #z min_501 4375

scoreboard players set #y max_501 7500
scoreboard players set #y min_501 1875
scoreboard players set #x max_501 6250
scoreboard players set #x min_501 3750
execute if score #x num_501 matches 3750..6250 if score #y num_501 matches 1875..7500 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 3750
scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
execute if score #HIT num_501 matches 0 if score #y num_501 matches 1875..3750 run function #bullet_501:detailed/hit
scoreboard players set #y max_501 7500
scoreboard players set #y min_501 5625
execute if score #HIT num_501 matches 0 if score #y num_501 matches 5625..7500 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 8125
scoreboard players set #y min_501 1875
scoreboard players set #x max_501 1250
scoreboard players set #x min_501 0
execute if score #HIT num_501 matches 0 if score #x num_501 matches 0..1250 if score #y num_501 matches 1875..8125 run function #bullet_501:detailed/hit
scoreboard players set #x max_501 10000
scoreboard players set #x min_501 8750
execute if score #HIT num_501 matches 0 if score #x num_501 matches 8750..10000 if score #y num_501 matches 1875..8125 run function #bullet_501:detailed/hit