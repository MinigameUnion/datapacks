#execute as @a[team=602] run function ats_602:p/main
execute unless score $602 a_602 matches 2.. run function ats_602:a/n
execute if score $602 a_602 matches 3.. run function ats_602:m/main
execute as @a run function ats_602:p/main
execute as @e[tag=tile_602] run function ats_602:tile/main
execute if score $602 a_602 matches 3.. unless score $602 addScore_602 = $602 score_602 run function ats_602:bar/0
execute if score $602 gamemode_602 matches 2..3 if score $602 a_602 matches 3.. positioned as @e[tag=tile_602] if score $0_602 score_602 = @e[sort=nearest,limit=1,tag=tile_602,distance=..1] score_602 run particle minecraft:dust 1 0 1 1.3 ~ ~2 ~ 0 0 0 0 1 force
execute if score $602 a_602 matches 3..4 run function ats_602:result/t

