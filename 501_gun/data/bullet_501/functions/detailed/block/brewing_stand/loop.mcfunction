scoreboard players set #y max_501 1250
scoreboard players set #y min_501 0

scoreboard players set #x max_501 5000
scoreboard players set #x min_501 1250
scoreboard players set #z max_501 4375
scoreboard players set #z min_501 625
execute if score #y num_501 matches 0..1250 if score #x num_501 matches 1250..5000 if score #z num_501 matches 625..4375 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 9375
scoreboard players set #z min_501 5625
execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..1250 if score #x num_501 matches 1250..5000 if score #z num_501 matches 5625..9375 run function #bullet_501:detailed/hit

scoreboard players set #x max_501 9375
scoreboard players set #x min_501 5625
scoreboard players set #z max_501 6875
scoreboard players set #z min_501 3125
execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..1250 if score #x num_501 matches 5625..9375 if score #z num_501 matches 3125..6875 run function #bullet_501:detailed/hit

execute if score #HIT num_501 matches 0 if score #x num_501 matches 4375..5625 if score #z num_501 matches 4375..5625 if score #y num_501 matches 0..8750 run function #bullet_501:detailed/hit/metal

execute if score #0 property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 6875..10000 if score #z num_501 matches 3750..6250 if score #y num_501 matches 1250..5625 run function bullet_501:detailed/block/brewing_stand/has_bottle_0
execute if score #1 property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 1250..4375 if score #z num_501 matches 1250..4375 if score #y num_501 matches 1250..5625 run function bullet_501:detailed/block/brewing_stand/has_bottle_1
execute if score #2 property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 1250..4375 if score #z num_501 matches 5625..7500 if score #y num_501 matches 1250..5625 run function bullet_501:detailed/block/brewing_stand/has_bottle_2

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/brewing_stand/loop