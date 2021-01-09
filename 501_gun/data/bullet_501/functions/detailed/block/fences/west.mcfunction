scoreboard players set #x max_501 43750
scoreboard players set #x min_501 0
scoreboard players set #z max_501 56250
scoreboard players set #z min_501 43750

scoreboard players set #y max_501 56250
scoreboard players set #y min_501 37500
execute if score #y num_501 matches 37500..56250 if score #HIT num_501 matches 0 run function bullet_501:hit/block/detailed

scoreboard players set #y max_501 93750
scoreboard players set #y min_501 75000
execute if score #y num_501 matches 75000..93750 if score #HIT num_501 matches 0 run function bullet_501:hit/block/detailed