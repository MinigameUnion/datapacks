#> player_000:remove_coin
# @public

scoreboard players operation #TEMP num_000 = @s coin_000
scoreboard players operation #TEMP num_000 -= @s remove_coin_000
execute if score #TEMP num_000 < #coin min_000 run tellraw @s [{"nbt":"string.coin","storage":"system_000:storage","interpret":true,"color":"red"},{"text":"が足りません","color":"red"}]
execute if score #TEMP num_000 < #coin min_000 run tag @s add failed_remove_000
execute if score #TEMP num_000 >= #coin min_000 run scoreboard players operation @s coin_000 -= @s remove_coin_000
execute if score #TEMP num_000 >= #coin min_000 run tellraw @s [{"score":{"objective": "remove_coin_000","name": "@s"},"color":"blue"},{"nbt":"string.coin","storage":"system_000:storage","interpret":true,"color":"blue"},{"text":" を消費した","color":"blue"},{"text":"  ( 合計","color":"gray"},{"score": {"objective": "coin_000","name": "@s"},"color":"gray"},{"nbt":"string.coin","storage":"system_000:storage","interpret":true,"color":"gray"},{"text": " )","color":"gray"}]

scoreboard players operation #TEMP num_000 = @s coin_000
scoreboard players operation #ID num_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.000.coin int 1 run scoreboard players get #TEMP num_000

scoreboard players set @s remove_coin_000 0

#playsound minecraft:item.armor.equip_diamond master @s ~ ~ ~ 0.5 1.1 0.0
#playsound minecraft:item.armor.equip_diamond master @s ~ ~ ~ 0.9 1.7 0.0
#playsound minecraft:item.trident.hit master @s ~ ~ ~ 0.3 1.2 0.0

#playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 1 0.75 0