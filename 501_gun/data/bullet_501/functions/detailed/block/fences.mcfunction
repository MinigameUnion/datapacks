scoreboard players set #x max_501 62500
scoreboard players set #x min_501 37500
scoreboard players set #y max_501 100000
scoreboard players set #y min_501 0
scoreboard players set #z max_501 62500
scoreboard players set #z min_501 37500
execute if score #x num_501 matches 37500..62500 if score #z num_501 matches 37500..62500 if score #HIT num_501 matches 0 run function bullet_501:hit/block/detailed

execute if score #east property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 62500..100000 if score #z num_501 matches 43750..56250 run function bullet_501:detailed/block/fences/east
execute if score #west property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 0..43750 if score #z num_501 matches 43750..56250 run function bullet_501:detailed/block/fences/west
execute if score #south property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 43750..56250 if score #z num_501 matches 62500..100000 run function bullet_501:detailed/block/fences/south
execute if score #north property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 43750..56250 if score #z num_501 matches 0..43750 run function bullet_501:detailed/block/fences/north

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/fences