scoreboard players set #spread spread_501 0
execute store result score #hip num_501 run data get storage gun_501:temp tag.gun.status.spread.hip 1
execute if data storage gun_501:temp tag.gun{ads:0b} run scoreboard players operation #spread spread_501 += #hip num_501

scoreboard players operation #add num_501 = @s walk_501
scoreboard players operation #add num_501 < #25 num_000
scoreboard players operation #add num_501 /= #5 num_000
scoreboard players operation #spread spread_501 += #add num_501

execute store result score #Motion x_vec_501 run data get entity @s Motion[0] 1000
execute store result score #Motion y_vec_501 run data get entity @s Motion[1] 1000
execute store result score #Motion z_vec_501 run data get entity @s Motion[2] 1000
execute store result score #Motion num_501 run scoreboard players operation #Motion x_vec_501 *= #Motion x_vec_501
scoreboard players operation #Motion y_vec_501 *= #Motion y_vec_501
scoreboard players operation #Motion num_501 += #Motion y_vec_501
scoreboard players operation #Motion z_vec_501 *= #Motion z_vec_501
scoreboard players operation #Motion num_501 += #Motion z_vec_501

scoreboard players operation #add num_501 = #Motion num_501
scoreboard players operation #add num_501 *= #hip num_501
scoreboard players operation #add num_501 /= #100000 num_000
scoreboard players operation #add num_501 < #13 num_000
scoreboard players operation #spread spread_501 += #add num_501

execute if entity @s[gamemode=creative] run scoreboard players set #spread spread_501 0
#tellraw @a [{"text":"spread : "},{"score":{"objective":"spread_501","name":"#spread"}}]

execute if score #spread spread_501 matches 1.. run function gun_501:spread/wobble