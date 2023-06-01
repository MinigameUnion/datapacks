execute unless entity @s[scores={z1_602=1..}] run function ats_602:unit/type/egg/0
scoreboard players add @s z1_602 1
execute if score $602 gamemode_602 matches 5 run kill @s
execute if entity @s[scores={z1_602=50..}] run kill @s
