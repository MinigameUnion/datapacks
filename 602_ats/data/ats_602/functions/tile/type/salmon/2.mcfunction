tag @s add salmon_check_602
tag @e[sort=nearest,limit=1,tag=tile_602,tag=!salmon_check_602,tag=!other_602] add salmon_check_602
scoreboard players operation @s z1_602 = @s score_602
scoreboard players operation @s z1_602 /= $0_602 a_602
scoreboard players operation @e[sort=furthest,limit=1,tag=salmon_check_602] score_602 += @s z1_602
tellraw @a[team=602] [{"text":"["},{"selector":"@s"},{"text":"] Score: "},{"score": {"name": "@s","objective": "z1_602"},"color":"gold"},{"text":" → "},{"text":"["},{"selector":"@e[sort=furthest,limit=1,tag=salmon_check_602]"},{"text":"]"}]

tag @s remove salmon_check_602
tag @e[sort=nearest,limit=1,tag=tile_602,tag=salmon_check_602,tag=!other_602] remove salmon_check_602
function ats_602:tile/am/salmon
