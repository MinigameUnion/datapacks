scoreboard players set #x max_501 5625
scoreboard players set #x min_501 4375

scoreboard players set #z max_501 1250
scoreboard players set #z min_501 0
scoreboard players set #y max_501 5625
scoreboard players set #y min_501 4375
execute if score #y num_501 matches 4375..5625 if score #z num_501 matches 0..1250 if score #HIT num_501 matches 0 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 2500
scoreboard players set #z min_501 1250
scoreboard players set #y max_501 10000
scoreboard players set #y min_501 0
execute if score #z num_501 matches 1250..2500 if score #y num_501 matches 0..10000 if score #HIT num_501 matches 0 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 4375
scoreboard players set #z min_501 2500
scoreboard players set #y max_501 2500
scoreboard players set #y min_501 1250
execute if score #y num_501 matches 1250..2500 if score #z num_501 matches 2500..4375 if score #HIT num_501 matches 0 run function #bullet_501:detailed/hit