execute store result score #x num_501 run scoreboard players operation #X pos_501 = #x pos_501
execute store result score #y num_501 run scoreboard players operation #Y pos_501 = #y pos_501
execute store result score #z num_501 run scoreboard players operation #Z pos_501 = #z pos_501
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation #x num_501 -= #BULLET x_vec_501
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation #y num_501 -= #BULLET y_vec_501
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation #z num_501 -= #BULLET z_vec_501
scoreboard players operation #X pos_501 /= #1block num_501
scoreboard players operation #Y pos_501 /= #1block num_501
scoreboard players operation #Z pos_501 /= #1block num_501
scoreboard players operation #x num_501 /= #1block num_501
scoreboard players operation #y num_501 /= #1block num_501
scoreboard players operation #z num_501 /= #1block num_501
scoreboard players operation #X pos_501 -= #x num_501
scoreboard players operation #Y pos_501 -= #y num_501
scoreboard players operation #Z pos_501 -= #z num_501

scoreboard players operation #x num_501 *= #1block num_501
scoreboard players operation #y num_501 *= #1block num_501
scoreboard players operation #z num_501 *= #1block num_501

execute if score #X pos_501 matches ..-1 run scoreboard players add #x num_501 10
execute if score #X pos_501 matches 1.. run scoreboard players add #x num_501 9990
execute if score #Y pos_501 matches ..-1 run scoreboard players add #y num_501 10
execute if score #Y pos_501 matches 1.. run scoreboard players add #y num_501 9990
execute if score #Z pos_501 matches ..-1 run scoreboard players add #z num_501 10
execute if score #Z pos_501 matches 1.. run scoreboard players add #z num_501 9990

function bullet_501:hit/block/root

execute store result entity @s Pos[0] double 0.0001 store result score #x num_501 run scoreboard players get #x pos_501
execute store result entity @s Pos[1] double 0.0001 store result score #y num_501 run scoreboard players get #y pos_501
execute store result entity @s Pos[2] double 0.0001 store result score #z num_501 run scoreboard players get #z pos_501
#execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #x pos_501
#execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #y pos_501
#execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #z pos_501