execute as @a[tag=join_area_602] run function ats_602:result/starter/0
schedule function ats_602:unit/type/salmon/1 3s
execute if score $602 gamemode_602 matches 2..3 if entity @e[tag=tile_602] run schedule function ats_602:result/repeat 5s append
execute unless entity @e[tag=tile_602] run schedule function ats_602:result/finish 4s append
execute if score $602 gamemode_602 matches 1 run schedule function ats_602:result/finish 4s append
