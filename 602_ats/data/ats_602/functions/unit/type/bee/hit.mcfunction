tag @s add bee_check_602
execute store success score @s z1_602 run scoreboard players add @e[sort=nearest,limit=1,tag=tile_602,tag=!bee_check_602] score_602 100
execute if entity @s[scores={z1_602=1}] run function ats_602:unit/type/bee/2
tag @s remove bee_check_602
scoreboard players reset @s z1_602