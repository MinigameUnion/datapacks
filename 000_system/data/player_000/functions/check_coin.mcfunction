#> player_000:check_coin
# @within
#   function player_000:**

scoreboard players operation #ID num_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result score #TEMP num_000 run data get entity @s Item.tag.000.coin
execute unless score @s coin_000 = #TEMP num_000 run tag @s add cheating_000
execute if entity @s[tag=cheating_000] store result score @s coin_000 run scoreboard players operation TEMP num_000 = #coin min_000
execute if entity @s[tag=cheating_000] as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.000.coin int 1 run scoreboard players get #TEMP num_000