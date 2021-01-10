#say 右
execute store result entity @s Rotation[0] float -0.01 run scoreboard players get @s b_602
execute store result score @s b_602 run data get entity @s Rotation[0] 100