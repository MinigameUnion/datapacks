scoreboard players set #x max_501 6875
scoreboard players set #x min_501 3125
scoreboard players set #y max_501 3750
scoreboard players set #y min_501 0
scoreboard players set #z max_501 6875
scoreboard players set #z min_501 3125
execute if score #x num_501 matches 3125..6875 if score #z num_501 matches 3125..6875 if score #y num_501 matches 0..3750 run function #bullet_501:detailed/hit

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/flower_pot