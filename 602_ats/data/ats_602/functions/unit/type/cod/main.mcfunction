execute if entity @s[tag=start_602] run function ats_602:unit/type/cod/0
scoreboard players set @s e_602 0
execute positioned as @e[tag=tile_602,tag=!other_602,distance=..4] run scoreboard players add @s e_602 1

execute if entity @s[tag=!cod_effect_602,scores={e_602=2..}] run tag @s add cod_effect_602
execute if entity @s[tag=cod_effect_602] run function ats_602:unit/type/cod/1 

execute if entity @s[tag=result_602] run function ats_602:unit/type/cod/result