execute if score #y num_501 matches 3125..10000 if score #open property_501 matches 0 if score #facing property_501 matches 1..2 if score #x num_501 matches 4375..5625 run function bullet_501:detailed/block/fence_gates/default/east
execute if score #y num_501 matches 3125..10000 if score #open property_501 matches 0 if score #facing property_501 matches 3..4 if score #z num_501 matches 4375..5625 run function bullet_501:detailed/block/fence_gates/default/south
execute if score #facing property_501 matches 1 if score #y num_501 matches 3125..10000 if score #open property_501 matches 1 unless score #z num_501 matches 1251..8749 if score #x num_501 matches 4375..9375 run function bullet_501:detailed/block/fence_gates/default/open/east
execute if score #facing property_501 matches 2 if score #y num_501 matches 3125..10000 if score #open property_501 matches 1 unless score #z num_501 matches 1251..8749 if score #x num_501 matches 625..5625 run function bullet_501:detailed/block/fence_gates/default/open/west
execute if score #facing property_501 matches 3 if score #y num_501 matches 3125..10000 if score #open property_501 matches 1 unless score #x num_501 matches 1251..8749 if score #z num_501 matches 4375..9375 run function bullet_501:detailed/block/fence_gates/default/open/south
execute if score #facing property_501 matches 4 if score #y num_501 matches 3125..10000 if score #open property_501 matches 1 unless score #x num_501 matches 1251..8749 if score #z num_501 matches 625..5625 run function bullet_501:detailed/block/fence_gates/default/open/north


scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/fence_gates/default/loop