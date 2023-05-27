execute as @e[limit=1,tag=tile_602] run function ats_602:result/operation

execute if entity @e[tag=tile_602] run schedule function ats_602:result/1 1s append
execute unless entity @e[tag=tile_602] run schedule function ats_602:result/finish 2s append
