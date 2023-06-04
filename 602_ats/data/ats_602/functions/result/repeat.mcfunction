execute as @e[limit=1,tag=tile_602] positioned as @s run function ats_602:result/operation/main

execute if entity @e[tag=tile_602] run schedule function ats_602:result/repeat 1s append
execute unless entity @e[tag=tile_602] run schedule function ats_602:result/finish 2s append
