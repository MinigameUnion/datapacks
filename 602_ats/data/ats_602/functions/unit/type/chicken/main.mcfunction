execute if entity @s[tag=start_602] run function ats_602:unit/type/chicken/0

execute if entity @s[tag=!stop_602] run scoreboard players add @s z1_602 1
execute if entity @s[scores={z1_602=2400..}] run function ats_602:unit/type/chicken/1
execute if entity @s[tag=result_602] run function ats_602:unit/type/chicken/result