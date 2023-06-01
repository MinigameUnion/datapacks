execute if entity @s[tag=start_602] run function ats_602:unit/type/donkey/0
execute unless entity @s[scores={z1_602=1}] if entity @s[scores={a1_602=..10}] run function ats_602:unit/type/donkey/1
execute if entity @s[tag=result_602] run function ats_602:unit/type/donkey/result