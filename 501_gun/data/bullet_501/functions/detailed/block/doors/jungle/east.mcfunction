scoreboard players set #y max_501 10000
scoreboard players set #y min_501 0
scoreboard players set #z max_501 2500
scoreboard players set #z min_501 0
execute if score #z num_501 matches 0..2500 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 10000
scoreboard players set #z min_501 7500
execute if score #z num_501 matches 7500..10000 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 5000
scoreboard players set #y min_501 3750
scoreboard players set #z max_501 7500
scoreboard players set #z min_501 2500
execute if score #HIT num_501 matches 0 if score #y num_501 matches 3750..5000 if score #z num_501 matches 2500..7500 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 3750
scoreboard players set #y min_501 2500
scoreboard players set #z max_501 3750
scoreboard players set #z min_501 2500
execute if score #HIT num_501 matches 0 if score #y num_501 matches 2500..3750 if score #z num_501 matches 2500..3750 run function #bullet_501:detailed/hit
scoreboard players set #z max_501 7500
scoreboard players set #z min_501 6250
execute if score #HIT num_501 matches 0 if score #y num_501 matches 2500..3750 if score #z num_501 matches 6250..7500 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 8125
scoreboard players set #y min_501 7500
execute if score #HIT num_501 matches 0 if score #y num_501 matches 7500..8125 if score #z num_501 matches 6250..7500 run function #bullet_501:detailed/hit
scoreboard players set #z max_501 3750
scoreboard players set #z min_501 2500
execute if score #HIT num_501 matches 0 if score #y num_501 matches 7500..8125 if score #z num_501 matches 2500..3750 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 8125
scoreboard players set #y min_501 5000
scoreboard players set #z max_501 4375
scoreboard players set #z min_501 3750
execute if score #HIT num_501 matches 0 if score #z num_501 matches 3750..4375 if score #y num_501 matches 5000..8125 run function #bullet_501:detailed/hit
scoreboard players set #y max_501 3125
scoreboard players set #y min_501 2500
execute if score #HIT num_501 matches 0 if score #z num_501 matches 3750..4375 if score #y num_501 matches 2500..3125 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 6250
scoreboard players set #z min_501 5625
execute if score #HIT num_501 matches 0 if score #z num_501 matches 3750..4375 if score #y num_501 matches 5625..6250 run function #bullet_501:detailed/hit
scoreboard players set #y max_501 8125
scoreboard players set #y min_501 5000
execute if score #HIT num_501 matches 0 if score #z num_501 matches 3750..4375 if score #y num_501 matches 5000..8125 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 7500
scoreboard players set #y min_501 6875
scoreboard players set #z max_501 3125
scoreboard players set #z min_501 2500
execute if score #HIT num_501 matches 0 if score #z num_501 matches 2500..3125 if score #y num_501 matches 6875..7500 run function #bullet_501:detailed/hit
scoreboard players set #z max_501 7500
scoreboard players set #z min_501 6875
execute if score #HIT num_501 matches 0 if score #z num_501 matches 6875..7500 if score #y num_501 matches 6875..7500 run function #bullet_501:detailed/hit
