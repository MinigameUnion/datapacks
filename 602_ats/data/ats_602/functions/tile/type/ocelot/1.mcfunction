execute positioned as @e[sort=nearest,limit=3,tag=tile_602,distance=..5] unless score @s e2_602 = @e[sort=nearest,limit=1,distance=..0.1] e2_602 facing entity @s feet rotated ~180 ~ positioned as @s run teleport @s ~ ~ ~ ~ ~

execute store result score @s b_602 run data get entity @s Rotation[0] 100
