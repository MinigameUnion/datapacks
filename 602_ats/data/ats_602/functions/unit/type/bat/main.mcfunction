execute if entity @s[tag=start_602] run function ats_602:unit/type/bat/0
execute if entity @s[tag=stop_602] run tag @s add bat_effect_602
execute if entity @s[scores={z1_602=1..}] run function ats_602:unit/type/bat/1
execute if entity @s[tag=bat_effect_602,tag=!stop_602] run scoreboard players set @s z1_602 1

execute if entity @s[tag=result_602] run function ats_602:unit/type/bat/result