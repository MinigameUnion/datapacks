scoreboard players operation #x num_501 = #x ope_501
scoreboard players operation #y num_501 = #y ope_501
scoreboard players operation #z num_501 = #z ope_501

scoreboard players operation #X pos_501 = #X ope_501
#scoreboard players operation #Y pos_501 = #Y ope_501
#scoreboard players operation #Z pos_501 = #Z ope_501

execute unless block ~ ~ ~ #bullet_501:air run function bullet_501:gap/hit

scoreboard players operation #detailed x_vec_501 += #BULLET x_vec_501
#scoreboard players operation #detailed y_vec_501 += #BULLET y_vec_501
#scoreboard players operation #detailed z_vec_501 += #BULLET z_vec_501
execute if block ~ ~ ~ #bullet_501:detailed run function #bullet_501:gap/detailed

#execute if score #HIT num_501 matches 0 if score #X ope_501 matches 1.. positioned ~ ~1 ~ run function bullet_501:gap/x
#execute if score #HIT num_501 matches 0 if score #X ope_501 matches ..-1 positioned ~ ~-1 ~ run function bullet_501:gap/x
execute if score #HIT num_501 matches 0 if score #Z pos_501 matches 0 unless score #Z ope_501 matches 0 if score #Y ope_501 matches 1.. positioned ~ ~1 ~ run function bullet_501:gap/y
execute if score #HIT num_501 matches 0 if score #Z pos_501 matches 0 unless score #Z ope_501 matches 0 if score #Y ope_501 matches ..-1 positioned ~ ~-1 ~ run function bullet_501:gap/y
#execute if score #HIT num_501 matches 0 if score #Z ope_501 matches 1.. positioned ~ ~ ~1 run function bullet_501:gap/z
#execute if score #HIT num_501 matches 0 if score #Z ope_501 matches ..-1 positioned ~ ~ ~-1 run function bullet_501:gap/z

#execute align xyz run particle barrier ~0.5 ~0.5 ~0.5 0.1 0.1 0.1 0 1 force