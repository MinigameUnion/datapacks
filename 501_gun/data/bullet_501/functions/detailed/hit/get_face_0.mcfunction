
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
