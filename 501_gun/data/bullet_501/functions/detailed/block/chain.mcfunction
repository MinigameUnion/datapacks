execute if score #axis property_501 matches 1 if score #y num_501 matches 4375..5625 if score #z num_501 matches 4375..5625 run function #bullet_501:detailed/hit/metal

execute if score #axis property_501 matches 2 if score #HIT num_501 matches 0 if score #x num_501 matches 4375..5625 if score #z num_501 matches 4375..5625 run function #bullet_501:detailed/hit/metal

execute if score #axis property_501 matches 3 if score #HIT num_501 matches 0 if score #x num_501 matches 4375..5625 if score #y num_501 matches 4375..5625 run function #bullet_501:detailed/hit/metal

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/chain