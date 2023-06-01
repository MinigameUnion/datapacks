tag @s add salmon_check_602
tag @e[sort=nearest,limit=1,tag=tile_602,tag=!salmon_check_602,tag=!other_602] add salmon_check_602
scoreboard players operation @s z1_602 = @s score_602
scoreboard players operation @s z1_602 /= $2_602 a_602
scoreboard players operation @e[sort=furthest,limit=1,tag=salmon_check_602] score_602 += @s z1_602
tellraw @a[tag=join_game_602] [{"text":"["},{"nbt":"item.tag.Name","entity":"@s","interpret":true},{"text":"] Score: "},{"score": {"name": "@s","objective": "z1_602"},"color":"gold"},{"text":" → "},{"text":"["},{"nbt":"item.tag.Name","entity":"@e[sort=furthest,limit=1,tag=salmon_check_602]","interpret":true},{"text":"]"}]

tag @s remove salmon_check_602
tag @e[sort=nearest,limit=1,tag=tile_602,tag=salmon_check_602,tag=!other_602] remove salmon_check_602
function ats_602:unit/am/salmon
