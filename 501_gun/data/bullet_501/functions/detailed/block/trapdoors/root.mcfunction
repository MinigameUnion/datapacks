execute unless score #open property_501 matches 1 if score #half property_501 matches 1 if score #y num_501 matches 8750..10000 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/trapdoors/top
execute unless score #open property_501 matches 1 if score #half property_501 matches 2 if score #y num_501 matches 0..1250 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/trapdoors/bottom

execute if score #open property_501 matches 1 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/trapdoors/open

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/trapdoors/root