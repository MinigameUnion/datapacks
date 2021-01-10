scoreboard players set @s a1_602 500
scoreboard players set @s a2_602 2
scoreboard players set @s addScore_602 10
scoreboard players set @s mulScore0_602 18
scoreboard players set @s mulScore1_602 3

scoreboard players set @s score_602 0
scoreboard players set @s e_602 0

teleport @s ~ ~ ~ ~180 ~
scoreboard players add $602 e1_602 1
scoreboard players operation @s e1_602 = $602 e1_602
scoreboard players operation @s e2_602 = $602 e1_602
scoreboard players set @s a_602 5
execute store result score @s b_602 run data get entity @s Rotation[0] 100

tag @s add go_602
tag @s add hit_602