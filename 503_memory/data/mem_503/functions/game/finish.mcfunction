#> mem_503:game/finish
# @within
#   function mem_503:game/turn_end

scoreboard players set #winner num_503 0
execute as @a[scores={id_503=1..}] if score @s id_503 = # id_503 run scoreboard players operation #winner num_503 > @s num_503
execute as @a[scores={id_503=1..}] if score @s id_503 = # id_503 if score @s num_503 = #winner num_503 run tag @s add winner_503

execute store result score #max num_503 run data get entity @s data.mem_503.cards

playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1 0
summon area_effect_cloud ~ ~0.25 ~ {Duration:60,CustomNameVisible:1b,CustomName:'{"text":"フィニッシュ"}'}
loot spawn ~ -64 ~ loot mem_503:game/finish
summon area_effect_cloud ~ ~-0.1 ~ {Tags:["init_503"],Duration:100,CustomNameVisible:1b,CustomName:'{"text":"の勝利！"}'}
execute positioned ~ ~-0.1 ~ run data modify entity @e[tag=init_503,distance=..0.5,limit=1] CustomName set from entity @e[type=item,y=-64,distance=..0.5,limit=1] Item.tag.display.Lore[0]
tag @e[tag=init_503,distance=..0.5,limit=1] remove init_503
summon area_effect_cloud ~ ~-0.35 ~ {Tags:["init_503"],Duration:100,CustomNameVisible:1b,CustomName:'{"text":"0/0枚 獲得"}'}
execute positioned ~ ~-0.35 ~ run data modify entity @e[tag=init_503,distance=..0.5,limit=1] CustomName set from entity @e[type=item,y=-64,distance=..0.5,limit=1] Item.tag.display.Lore[1]
tag @e[tag=init_503,distance=..0.5,limit=1] remove init_503

scoreboard players operation # id_503 = @s id_503
execute as @e[tag=card_503] if score # id_503 = @s id_503 run data modify entity @s Fixed set value 1b
kill @e[type=item,y=-64,distance=..0.5]

tag @a[tag=winner_503] remove winner_503

execute as @a[scores={id_503=1..}] if score # id_503 = @s id_503 run function mem_503:game/leave

data modify storage mem_503:schedule reset append value {id:0}
execute store result storage mem_503:schedule reset[-1].id int 1 run scoreboard players get # id_503
schedule function mem_503:schedule/reset 100t