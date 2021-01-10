tag @s remove hit_602
scoreboard players operation @s e2_602 = @s e1_602
execute positioned as @e[tag=tile_602] if score @s e2_602 = @e[sort=nearest,limit=1,distance=..0.1] e2_602 as @e[sort=nearest,limit=1,distance=..0.1] run scoreboard players operation @s e2_602 = @s e1_602
