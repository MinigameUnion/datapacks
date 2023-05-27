execute as @a[team=602] run function ats_602:result/0_0
schedule function ats_602:tile/type/salmon/1 3s
execute if score $602 gamemode_602 matches 2..3 if entity @e[tag=tile_602] run schedule function ats_602:result/1 5s append
execute unless entity @e[tag=tile_602] run schedule function ats_602:result/finish 4s append
execute if score $602 gamemode_602 matches 1 run schedule function ats_602:result/finish 4s append
