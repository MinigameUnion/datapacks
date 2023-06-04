#say 前
execute if entity @s[scores={b_602=0..}] run scoreboard players set @s d_602 18000
execute if entity @s[scores={b_602=..-1}] run scoreboard players set @s d_602 -18000
scoreboard players operation @s d_602 -= @s b_602
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s d_602
execute store result score @s b_602 run data get entity @s Rotation[0] 100