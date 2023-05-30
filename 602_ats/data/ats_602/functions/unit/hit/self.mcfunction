execute unless score $602 gamemode_602 matches 1 run function ats_602:unit/hit/score

scoreboard players operation @e[limit=1,tag=hit_partner_602] a1_602 >< @s a1_602
execute if entity @s[scores={a1_602=1..}] run scoreboard players operation @e[limit=1,tag=hit_partner_602] b_602 >< @s b_602
execute unless entity @s[scores={a1_602=1..}] run scoreboard players operation @e[limit=1,tag=hit_partner_602] b_602 = @s b_602
tag @s add hit_602