scoreboard players set #x max_501 6250
scoreboard players set #x min_501 3750
scoreboard players set #y max_501 10000
scoreboard players set #y min_501 0
scoreboard players set #z max_501 6250
scoreboard players set #z min_501 3750
execute if score #x num_501 matches 3750..6250 if score #z num_501 matches 3750..6250 if score #HIT num_501 matches 0 run function #bullet_501:detailed/hit

execute if score #east property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 6250..10000 if score #z num_501 matches 4375..5625 run function bullet_501:detailed/block/fences/east
execute if score #west property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 0..3750 if score #z num_501 matches 4375..5625 run function bullet_501:detailed/block/fences/west
execute if score #south property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 4375..5625 if score #z num_501 matches 6250..10000 run function bullet_501:detailed/block/fences/south
execute if score #north property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 4375..5625 if score #z num_501 matches 0..3750 run function bullet_501:detailed/block/fences/north

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/fences/root