tag @s add execute_602
execute unless entity @s[x=6014,y=0,z=14,dx=36,dy=255,dz=36] run tag @s add e_outside_602

execute positioned as @s rotated as @s run function ats_602:unit/0
scoreboard players operation @s a_602 = @s a2_602
execute if entity @s[scores={a1_602=1..}] run scoreboard players remove @s a1_602 1
execute if entity @s[scores={a_602=7..,a1_602=241..280}] run scoreboard players set @s a_602 6
execute if entity @s[scores={a_602=6..,a1_602=181..240}] run scoreboard players set @s a_602 5
execute if entity @s[scores={a_602=5..,a1_602=141..180}] run scoreboard players set @s a_602 4
execute if entity @s[scores={a_602=4..,a1_602=101..140}] run scoreboard players set @s a_602 3
execute if entity @s[scores={a_602=3..,a1_602=61..100}] run scoreboard players set @s a_602 2
execute if entity @s[scores={a_602=2..,a1_602=1..60}] run scoreboard players set @s a_602 1
execute if entity @s[scores={a1_602=..0}] run tag @s add stop_602

#execute if entity @s[tag=stop_602,tag=hit_602] positioned as @s run function ats_602:unit/1
execute if entity @s[scores={a_602=1..,a1_602=..0}] run scoreboard players set @s a_602 0

execute if score @s score_602 > $0_602 score_602 run scoreboard players operation $0_602 score_602 = @s score_602

execute if entity @s[tag=e_outside_602] run function ats_602:error/unit/outside_issue

execute if score @s e_602 matches 1.. as @e[limit=1,tag=tile_602,tag=!execute_602] run function ats_602:unit/main