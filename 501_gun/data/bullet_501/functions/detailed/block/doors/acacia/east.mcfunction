scoreboard players set #y max_501 10000
scoreboard players set #y min_501 0
scoreboard players set #z max_501 1875
scoreboard players set #z min_501 0
execute if score #z num_501 matches 0..1875 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 4375
scoreboard players set #z min_501 3125
execute if score #HIT num_501 matches 0 if score #z num_501 matches 3125..4375 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 6875
scoreboard players set #z min_501 5625
execute if score #HIT num_501 matches 0 if score #z num_501 matches 5625..6875 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 10000
scoreboard players set #z min_501 8125
execute if score #HIT num_501 matches 0 if score #z num_501 matches 8125..10000 run function #bullet_501:detailed/hit