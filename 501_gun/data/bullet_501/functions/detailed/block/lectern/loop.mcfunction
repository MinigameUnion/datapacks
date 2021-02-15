scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
scoreboard players set #y max_501 1250
scoreboard players set #y min_501 0
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
execute if score #y num_501 matches 0..1250 run function #bullet_501:detailed/hit

scoreboard players set #x max_501 7500
scoreboard players set #x min_501 2500
scoreboard players set #y max_501 9375
scoreboard players set #y min_501 0
scoreboard players set #z max_501 7500
scoreboard players set #z min_501 2500
execute if score #HIT num_501 matches 0 if score #x num_501 matches 2500..7500 if score #z num_501 matches 2500..7500 if score #y num_501 matches 0..9375 run function #bullet_501:detailed/hit

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/lectern/loop