function ats_602:system/g3/pre
execute if score $602 a_602 matches 3 run function ats_602:unit/starter

execute as @a[tag=join_game_602] run function ats_602:p/play

execute unless score $602 addScore_602 = $602 score_602 run function ats_602:bossbar/0
execute store result bossbar score_602 value run scoreboard players get $602 e_602
execute if score $602 gamemode_602 matches 2..3 if score $602 a_602 matches 3.. positioned as @e[tag=tile_602] if score $0_602 score_602 = @e[sort=nearest,limit=1,tag=tile_602,distance=..0.01] score_602 run particle minecraft:dust 1 0 1 1.3 ~ ~2 ~ 0 0 0 0 1 force

execute if score $602 a_602 matches 3..4 if score $602 e_602 matches ..0 run function ats_602:result/t