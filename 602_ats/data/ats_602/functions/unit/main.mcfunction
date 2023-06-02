tag @s add execute_602
execute unless entity @s[x=6014,y=0,z=14,dx=36,dy=255,dz=36] run tag @s add e_outside_602

execute unless score $pause_602 a_602 matches 1 positioned as @s rotated as @s run function ats_602:unit/tick/main
execute unless score $pause_602 a_602 matches 1 run function ats_602:unit/motion
execute positioned as @s run function ats_602:unit/tick/info

execute if entity @s[tag=e_outside_602] run function ats_602:error/unit/outside_issue

execute if entity @e[tag=hit_partner_602,tag=!execute_602] as @e[limit=1,tag=tile_602,tag=hit_partner_602,tag=!execute_602] run function ats_602:unit/main
execute unless entity @e[tag=hit_partner_602,tag=!execute_602] as @e[limit=1,tag=tile_602,tag=!execute_602] run function ats_602:unit/main

execute if entity @s[scores={e_602=..1}] run function ats_602:unit/distance_reset
