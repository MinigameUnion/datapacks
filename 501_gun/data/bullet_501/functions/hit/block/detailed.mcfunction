execute store result score #BASE x_vec_501 store result score #BASE y_vec_501 store result score #BASE z_vec_501 run scoreboard players operation #BASE num_501 -= #SKIP num_501
execute unless block ~ ~ ~ #bullet_501:breakable run scoreboard players operation #min num_501 = #BASE num_501
execute unless block ~ ~ ~ #bullet_501:breakable run scoreboard players set #SPEED num_501 0
execute unless block ~ ~ ~ #bullet_501:breakable run scoreboard players set #SKIP num_501 0
execute unless block ~ ~ ~ #bullet_501:breakable run scoreboard players add #HIT num_501 1
#scoreboard players set #SKIP x_vec_501 0
#scoreboard players set #SKIP y_vec_501 0
#scoreboard players set #SKIP z_vec_501 0

scoreboard players operation #BASE x_vec_501 *= #BULLET x_vec_501
scoreboard players operation #BASE y_vec_501 *= #BULLET y_vec_501
scoreboard players operation #BASE z_vec_501 *= #BULLET z_vec_501

execute store result score #x num_501 run scoreboard players operation #X num_501 += #BASE x_vec_501
execute store result score #y num_501 run scoreboard players operation #Y num_501 += #BASE y_vec_501
execute store result score #z num_501 run scoreboard players operation #Z num_501 += #BASE z_vec_501

execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation #x num_501 -= #DETAILED x_vec_501
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation #y num_501 -= #DETAILED y_vec_501
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation #z num_501 -= #DETAILED z_vec_501

scoreboard players operation #X min_501 += #x min_501
scoreboard players operation #Y min_501 += #y min_501
scoreboard players operation #Z min_501 += #z min_501
scoreboard players operation #X max_501 += #x max_501
scoreboard players operation #Y max_501 += #y max_501
scoreboard players operation #Z max_501 += #z max_501

scoreboard players set #X pos_501 0
scoreboard players set #Y pos_501 0
scoreboard players set #Z pos_501 0
execute if score #x num_501 > #X max_501 if score #X num_501 <= #X max_501 run scoreboard players set #X pos_501 -1
execute if score #y num_501 > #Y max_501 if score #Y num_501 <= #Y max_501 run scoreboard players set #Y pos_501 -1
execute if score #z num_501 > #Z max_501 if score #Z num_501 <= #Z max_501 run scoreboard players set #Z pos_501 -1
execute if score #x num_501 < #X min_501 if score #X num_501 >= #X min_501 run scoreboard players set #X pos_501 1
execute if score #y num_501 < #Y min_501 if score #Y num_501 >= #Y min_501 run scoreboard players set #Y pos_501 1
execute if score #z num_501 < #Z min_501 if score #Z num_501 >= #Z min_501 run scoreboard players set #Z pos_501 1

scoreboard players operation #x num_501 /= #1block num_501
scoreboard players operation #y num_501 /= #1block num_501
scoreboard players operation #z num_501 /= #1block num_501
scoreboard players operation #x num_501 *= #1block num_501
scoreboard players operation #y num_501 *= #1block num_501
scoreboard players operation #z num_501 *= #1block num_501

execute if score #X pos_501 matches ..-1 run scoreboard players operation #x num_501 = #X max_501
execute if score #X pos_501 matches ..-1 run scoreboard players operation #x num_501 += #DETAILED ope_501
execute if score #X pos_501 matches 1.. run scoreboard players operation #x num_501 = #X min_501
execute if score #X pos_501 matches 1.. run scoreboard players operation #x num_501 -= #DETAILED ope_501
execute if score #Y pos_501 matches ..-1 run scoreboard players operation #y num_501 = #Y max_501
execute if score #Y pos_501 matches ..-1 run scoreboard players operation #y num_501 += #DETAILED ope_501
execute if score #Y pos_501 matches 1.. run scoreboard players operation #y num_501 = #Y min_501
execute if score #Y pos_501 matches 1.. run scoreboard players operation #y num_501 -= #DETAILED ope_501
execute if score #Z pos_501 matches ..-1 run scoreboard players operation #z num_501 = #Z max_501
execute if score #Z pos_501 matches ..-1 run scoreboard players operation #z num_501 += #DETAILED ope_501
execute if score #Z pos_501 matches 1.. run scoreboard players operation #z num_501 = #Z min_501
execute if score #Z pos_501 matches 1.. run scoreboard players operation #z num_501 -= #DETAILED ope_501

#execute if score #material num_501 matches 0.. run function bullet_501:hit/block/material/detailed
#execute unless score #material num_501 matches 0.. run function bullet_501:hit/block/root
function bullet_501:hit/block/root

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #x pos_501
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #y pos_501
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #z pos_501