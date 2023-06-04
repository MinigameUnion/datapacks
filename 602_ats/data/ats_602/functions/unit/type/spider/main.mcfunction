execute if entity @s[tag=start_602] run function ats_602:unit/type/spider/0
execute unless entity @s[scores={z1_602=1}] if entity @s[tag=stop_602] run function ats_602:unit/type/spider/1
execute if entity @s[scores={z1_602=1}] unless entity @s[tag=stop_602] run scoreboard players set @s z1_602 0
execute if entity @s[tag=result_602] run function ats_602:unit/type/spider/result