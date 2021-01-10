scoreboard players set @s a1_602 400
scoreboard players set @s a2_602 4
scoreboard players set @s score_602 0
scoreboard players set @s e_602 0
scoreboard players add $602 e1_602 1
scoreboard players operation @s e1_602 = $602 e1_602
scoreboard players operation @s e2_602 = $602 e1_602
scoreboard players set @s a_602 5

execute positioned as @s rotated as @e[sort=nearest,limit=1,tag=chicken_602] rotated ~180 ~ run teleport @s ~ ~ ~ ~ ~

tag @s remove start_602