execute if entity @s[tag=start_602] run function ats_602:unit/type/wolf/0
execute unless entity @s[scores={z1_602=3..}] if entity @s[scores={a1_602=..50}] run function ats_602:unit/type/wolf/1
execute if entity @s[tag=result_602] run function ats_602:unit/type/wolf/result