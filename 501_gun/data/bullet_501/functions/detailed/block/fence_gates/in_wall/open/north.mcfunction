execute if score #x num_501 matches 0..1250 run scoreboard players set #x max_501 1250
execute if score #x num_501 matches 0..1250 run scoreboard players set #x min_501 0
execute if score #x num_501 matches 8750..10000 run scoreboard players set #x max_501 10000
execute if score #x num_501 matches 8750..10000 run scoreboard players set #x min_501 8750

scoreboard players set #z max_501 1875
scoreboard players set #z min_501 625
scoreboard players set #y max_501 7500
scoreboard players set #y min_501 1875
execute if score #HIT num_501 matches 0 if score #z num_501 matches 625..1875 if score #y num_501 matches 1875..7500 run function #bullet_501:detailed/hit
scoreboard players set #z max_501 5625
scoreboard players set #y max_501 3750
execute if score #HIT num_501 matches 0 if score #z num_501 matches 625..5625 if score #y num_501 matches 1875..3750 run function #bullet_501:detailed/hit
scoreboard players set #y max_501 7500
scoreboard players set #y min_501 5625
execute if score #HIT num_501 matches 0 if score #z num_501 matches 625..5625 if score #y num_501 matches 5625..7500 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 5625
scoreboard players set #z min_501 4375
scoreboard players set #y max_501 8125
scoreboard players set #y min_501 1875
execute if score #z num_501 matches 4375..5625 if score #HIT num_501 matches 0 if score #y num_501 matches 1875..8125 run function #bullet_501:detailed/hit