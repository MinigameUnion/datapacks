execute if entity @s[tag=start_602] run function ats_602:unit/type/cod/0
scoreboard players set @s e_602 0
execute positioned as @e[tag=tile_602,tag=!other_602,distance=..4] run scoreboard players add @s e_602 1

execute if entity @s[scores={e_602=2..,mulScore1_602=3}] run scoreboard players set @s mulScore1_602 4
execute if entity @s[scores={e_602=..1,mulScore1_602=4}] run scoreboard players set @s mulScore1_602 3


execute if entity @s[tag=result_602] run function ats_602:unit/type/cod/result