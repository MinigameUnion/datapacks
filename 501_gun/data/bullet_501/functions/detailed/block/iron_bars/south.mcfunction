
scoreboard players set #x max_501 5625
scoreboard players set #x min_501 4375

scoreboard players set #z max_501 10000
scoreboard players set #z min_501 8750
scoreboard players set #y max_501 5625
scoreboard players set #y min_501 4375
execute if score #y num_501 matches 4375..5625 if score #z num_501 matches 8750..10000 if score #HIT num_501 matches 0 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 8750
scoreboard players set #z min_501 7500
scoreboard players set #y max_501 10000
scoreboard players set #y min_501 0
execute if score #z num_501 matches 7500..8750 if score #y num_501 matches 0..10000 if score #HIT num_501 matches 0 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 7500
scoreboard players set #z min_501 5625
scoreboard players set #y max_501 8750
scoreboard players set #y min_501 7500
execute if score #y num_501 matches 7500..8750 if score #z num_501 matches 5625..7500 if score #HIT num_501 matches 0 run function #bullet_501:detailed/hit
