#tellraw @a [{"text":"hit at pos_501 : #X"},{"score": {"objective": "pos_501","name": "#X"}},{"text":" #Y"},{"score": {"objective": "pos_501","name": "#Y"}},{"text":" #Z"},{"score": {"objective": "pos_501","name": "#Z"}}]

execute if block ~ ~ ~ #bullet_501:material/metal positioned as @s run function bullet_501:hit/block/material/metal
execute if block ~ ~ ~ #bullet_501:material/dirt positioned as @s run function bullet_501:hit/block/material/dirt
execute if block ~ ~ ~ minecraft:sand positioned as @s run function bullet_501:hit/block/material/sand
execute if block ~ ~ ~ minecraft:red_sand positioned as @s run function bullet_501:hit/block/material/red_sand
execute if block ~ ~ ~ minecraft:gravel positioned as @s run function bullet_501:hit/block/material/gravel
execute if block ~ ~ ~ #bullet_501:material/powder positioned as @s run function bullet_501:hit/block/material/powder
execute if block ~ ~ ~ #bullet_501:material/planks run function bullet_501:hit/block/material/planks
execute if block ~ ~ ~ #bullet_501:material/snow positioned as @s run function bullet_501:hit/block/material/snow
execute if block ~ ~ ~ #bullet_501:soft positioned as @s unless entity @e[tag=sound_501,tag=soft_501,distance=..1,limit=1] run function bullet_501:hit/block/material/soft

execute if block ~ ~ ~ #bullet_501:hit_effects positioned as @s run function bullet_501:hit/block/hit_effect

execute unless block ~ ~ ~ #bullet_501:particle positioned as @s run function bullet_501:hit/block/material/others

execute if score #HITMARK num_501 matches 1 if score #HITMARK ope_501 < #HITMARK_MAX num_501 unless block ~ ~ ~ #bullet_501:unmarkable positioned as @s run function bullet_501:hit/block/mark

execute if block ~ ~ ~ #bullet_501:breakable run function bullet_501:hit/block/breakable