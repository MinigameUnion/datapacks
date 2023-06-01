execute unless score $602 gamemode_602 matches 1 run function ats_602:unit/hit/score

function ats_602:unit/hit/check/self
function ats_602:unit/hit/check/partner

execute unless entity @s[tag=skill_changed_602] unless entity @e[limit=1,tag=hit_partner_602,tag=skill_changed_602] run scoreboard players operation @e[limit=1,tag=hit_partner_602] a1_602 >< @s a1_602
execute if entity @s[scores={a1_602=1..}] run scoreboard players operation @e[limit=1,tag=hit_partner_602] b_602 >< @s b_602
execute unless entity @s[scores={a1_602=1..}] run scoreboard players operation @e[limit=1,tag=hit_partner_602] b_602 = @s b_602

tag @s remove skill_changed_602
tag @s add hit_602