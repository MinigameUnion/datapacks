#> mem_503:game/start
# @within
#   function mem_503:schedule/start

scoreboard players set @s player_503 0

execute as @e[tag=trigger_503,distance=..1] if score @s id_503 = # id_503 run kill @s
execute as @e[tag=card_503,distance=..128] if score @s id_503 = # id_503 run tag @s add matched_503
execute store result score #card num_503 if entity @e[tag=matched_503]

execute as @e[tag=matched_503,distance=..128] run data modify entity @s Fixed set value 0b

loot spawn ~ -64 ~ loot mem_503:game/deck
execute as @e[y=-64,type=item,distance=..0.5,sort=random,limit=1] run function mem_503:game/deck/item
kill @e[y=-64,type=item,distance=..0.5]

execute positioned ^ ^ ^-0.33 run summon area_effect_cloud ~ ~-0.5 ~ {Duration:60,CustomNameVisible:1b,CustomName:'{"text":"スタート"}'}
playsound entity.experience_orb.pickup master @a ^ ^ ^-0.33 1 1 0