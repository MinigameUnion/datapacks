scoreboard players set #SPEED num_501 0
scoreboard players add #HIT num_501 1

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #x num_501
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #y num_501
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #z num_501

execute unless score #X pos_501 matches 0 run scoreboard players operation #x num_501 /= #1block num_501
execute unless score #X pos_501 matches 0 run scoreboard players operation #x num_501 *= #1block num_501
execute if score #X pos_501 matches ..-1 run scoreboard players add #x num_501 10
execute if score #X pos_501 matches 1.. run scoreboard players add #x num_501 9990

execute unless score #Y pos_501 matches 0 run scoreboard players operation #y num_501 /= #1block num_501
execute unless score #Y pos_501 matches 0 run scoreboard players operation #y num_501 *= #1block num_501
execute if score #Y pos_501 matches ..-1 run scoreboard players add #y num_501 10
execute if score #Y pos_501 matches 1.. run scoreboard players add #y num_501 9990

execute unless score #Z pos_501 matches 0 run scoreboard players operation #z num_501 /= #1block num_501
execute unless score #Z pos_501 matches 0 run scoreboard players operation #z num_501 *= #1block num_501
execute if score #Z pos_501 matches ..-1 run scoreboard players add #z num_501 10
execute if score #Z pos_501 matches 1.. run scoreboard players add #z num_501 9990


execute unless block ~ ~ ~ #bullet_501:immune run function bullet_501:hit/block/root

#execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #x pos_501
#execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #y pos_501
#execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #z pos_501