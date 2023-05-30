scoreboard players reset $602 c_602
scoreboard players reset $602 d_602
execute as @e[limit=1,tag=tile_602,tag=!execute_602] run function ats_602:unit/main
tag @e[tag=tile_602] remove execute_602
