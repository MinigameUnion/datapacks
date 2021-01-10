execute if entity @s[tag=!hit_602] run scoreboard players operation @e[sort=nearest,limit=2,tag=tile_602,tag=!hit_602,tag=!other_602,distance=..1.0] e2_602 = @s e1_602
execute positioned as @e[tag=tile_602,tag=!other_602,distance=..1.3] if score @s e2_602 = @e[sort=nearest,limit=1,distance=..0.1] e2_602 run scoreboard players add @s e_602 1

execute if entity @s[scores={e_602=2..}] run tag @s add hit_602
execute if entity @s[scores={e_602=2..}] positioned as @e[tag=tile_602,tag=!hit_602,tag=!other_602] if score @s e2_602 = @e[sort=nearest,limit=1,distance=..0.1] e2_602 run function ats_602:hit/0
execute if entity @s[tag=bee_602,scores={z1_602=1}] run function ats_602:tile/type/bee/1
execute if entity @s[scores={e_602=1}] run tag @s remove hit_602
execute if entity @s[scores={e_602=1}] positioned as @e[tag=tile_602] if score @s e2_602 = @e[sort=nearest,limit=1,distance=..0.1] e2_602 as @e[sort=nearest,limit=1,distance=..0.1] run function ats_602:hit/1
scoreboard players set @s e_602 0
