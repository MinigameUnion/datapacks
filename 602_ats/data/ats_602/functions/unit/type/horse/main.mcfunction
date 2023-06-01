execute if entity @s[tag=start_602] run function ats_602:unit/type/horse/0
execute if entity @s[scores={mulScore1_602=1,a1_602=280..}] run scoreboard players set @s mulScore1_602 2
execute if entity @s[scores={mulScore1_602=1,a1_602=280..}] run function ats_602:unit/am/horse
execute unless entity @s[scores={mulScore1_602=2,a1_602=280..}] run scoreboard players set @s mulScore1_602 1
execute if entity @s[tag=result_602] run function ats_602:unit/type/horse/result