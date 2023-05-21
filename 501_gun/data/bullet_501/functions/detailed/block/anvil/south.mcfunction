execute if score #x num_501 matches 1875..8125 if score #y num_501 matches 6250..10000 run function #bullet_501:detailed/hit/metal

execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..2500 if score #z num_501 matches 1250..8750 if score #x num_501 matches 1250..8750 run function #bullet_501:detailed/hit/metal

execute if score #HIT num_501 matches 0 if score #x num_501 matches 3750..6250 if score #z num_501 matches 2500..7500 if score #y num_501 matches 3125..6250 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #y num_501 matches 2500..3125 if score #z num_501 matches 1875..8125 if score #x num_501 matches 2500..7500 run function #bullet_501:detailed/hit/metal

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/anvil/south