execute unless entity @e[tag=tile_602,tag=!stop_602] run scoreboard players set $602 a_602 5
execute if score $602 a_602 matches 5 run schedule function ats_602:result/0 2s append
