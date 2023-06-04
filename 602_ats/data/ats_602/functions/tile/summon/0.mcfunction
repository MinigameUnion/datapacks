data modify entity @s Tags append from entity @a[limit=1,tag=shooter_602] SelectedItem.tag.Tags[0]
data modify entity @s CustomName set from entity @a[limit=1,tag=shooter_602] SelectedItem.tag.display.Name
execute if score $602 gamemode_602 matches 1 run scoreboard players set @s a1_602 400
execute if score $602 gamemode_602 matches 2..3 run scoreboard players set @s a1_602 500
execute store result score @s a2_602 run data get entity @a[limit=1,tag=shooter_602] SelectedItem.tag.602[0]
execute store result score @s addScore_602 run data get entity @a[limit=1,tag=shooter_602] SelectedItem.tag.602[1]
execute store result score @s mulScore0_602 run data get entity @a[limit=1,tag=shooter_602] SelectedItem.tag.602[2]
execute store result score @s mulScore1_602 run data get entity @a[limit=1,tag=shooter_602] SelectedItem.tag.602[3]

data modify entity @s ArmorItems[3].tag.mul_602 set from entity @a[limit=1,tag=shooter_602] SelectedItem.tag.mul_602
data modify entity @s ArmorItems[3].tag.mul1_602 set from entity @a[limit=1,tag=shooter_602] SelectedItem.tag.mul1_602
data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @a[limit=1,tag=shooter_602] SelectedItem.tag.CustomModelData

scoreboard players set @s score_602 0
scoreboard players set @s e_602 0

teleport @s ~ ~ ~ ~ ~
scoreboard players add $602 e1_602 1
scoreboard players operation @s e1_602 = $602 e1_602
scoreboard players operation @s e2_602 = $602 e1_602
scoreboard players set @s a_602 5
execute store result score @s b_602 run data get entity @s Rotation[0] 100

tag @s add go_602
