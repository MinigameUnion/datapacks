data modify storage ats_602:text mul_602 set from entity @s item.tag.mul_602
scoreboard players operation @s score0_602 += @s score_602
tellraw @a[tag=join_game_602] [{"text":"["},{"nbt":"item.tag.Name","entity":"@s","interpret": true},{"text":"] Score: "},{"score": {"name": "@s","objective": "score_602"}},{"storage": "ats_602:text","nbt":"mul_602","color":"light_purple"},{"text":" → "},{"score": {"name": "@s","objective": "score0_602"},"color":"gold"},{"text": " !","color":"gold"}]
