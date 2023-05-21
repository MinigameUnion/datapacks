execute if score #facing property_501 matches 1 if score #x num_501 matches 0..1875 run function bullet_501:detailed/block/doors/in
execute if score #facing property_501 matches 2 if score #x num_501 matches 8125..10000 run function bullet_501:detailed/block/doors/in
execute if score #facing property_501 matches 3 if score #z num_501 matches 0..1875 run function bullet_501:detailed/block/doors/in
execute if score #facing property_501 matches 4 if score #z num_501 matches 8125..10000 run function bullet_501:detailed/block/doors/in

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/doors/loop