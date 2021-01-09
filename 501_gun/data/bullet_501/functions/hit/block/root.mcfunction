#tellraw @a [{"text":"hit at pos_501 : #X"},{"score": {"objective": "pos_501","name": "#X"}},{"text":" #Y"},{"score": {"objective": "pos_501","name": "#Y"}},{"text":" #Z"},{"score": {"objective": "pos_501","name": "#Z"}}]

execute if block ~ ~ ~ #bullet_501:material/metal positioned as @s run function bullet_501:hit/block/material/metal
execute if block ~ ~ ~ #bullet_501:material/dirt positioned as @s run function bullet_501:hit/block/material/dirt
execute if block ~ ~ ~ minecraft:sand positioned as @s run function bullet_501:hit/block/material/sand
execute if block ~ ~ ~ minecraft:red_sand positioned as @s run function bullet_501:hit/block/material/red_sand
execute if block ~ ~ ~ minecraft:gravel positioned as @s run function bullet_501:hit/block/material/gravel
execute if block ~ ~ ~ #bullet_501:material/planks run function bullet_501:hit/block/material/planks

execute unless block ~ ~ ~ #bullet_501:particle positioned as @s run function bullet_501:hit/block/material/other

execute if score #HITMARK num_501 matches 1 if score #HITMARK ope_501 < #HITMARK_MAX num_501 unless block ~ ~ ~ #bullet_501:unmarkable positioned as @s unless entity @e[tag=hit_mark_501,distance=..0.05,limit=1] run function bullet_501:hit/block/mark