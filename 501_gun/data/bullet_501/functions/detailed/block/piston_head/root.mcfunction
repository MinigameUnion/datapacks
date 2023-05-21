execute if score #facing property_501 matches 1 if score #x num_501 matches 7500..10000 run function bullet_501:detailed/block/piston_head/east
execute if score #HIT num_501 matches 0 if score #facing property_501 matches 2 if score #x num_501 matches 0..2500 run function bullet_501:detailed/block/piston_head/west
execute if score #HIT num_501 matches 0 if score #facing property_501 matches 3 if score #z num_501 matches 7500..10000 run function bullet_501:detailed/block/piston_head/south
execute if score #HIT num_501 matches 0 if score #facing property_501 matches 4 if score #z num_501 matches 0..2500 run function bullet_501:detailed/block/piston_head/north
execute if score #HIT num_501 matches 0 if score #facing property_501 matches 0 if score #y num_501 matches 0..2500 run function bullet_501:detailed/block/piston_head/down
execute if score #HIT num_501 matches 0 if score #facing property_501 matches 5 if score #y num_501 matches 7500..10000 run function bullet_501:detailed/block/piston_head/up

execute if score #HIT num_501 matches 0 if score #facing property_501 matches 1..2 if score #y num_501 matches 3750..6250 if score #z num_501 matches 3750..6250 run function bullet_501:detailed/block/piston_head/pole/x
execute if score #HIT num_501 matches 0 if score #facing property_501 matches 3..4 if score #x num_501 matches 3750..6250 if score #y num_501 matches 3750..6250 run function bullet_501:detailed/block/piston_head/pole/z
execute if score #HIT num_501 matches 0 unless score #facing property_501 matches 1..4 if score #x num_501 matches 3750..6250 if score #z num_501 matches 3750..6250 run function bullet_501:detailed/block/piston_head/pole/y

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/piston_head/root