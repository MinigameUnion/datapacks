data modify storage ats_602:unit Post append value {Tags:["tile_602","start_602"],item:{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:602000,mul_602:"x1.0"}}}

data modify storage ats_602:unit Post[-1].Tags append from storage ats_602:main ItemClip.Tags[0]
data modify storage ats_602:unit Post[-1].CustomName set from storage ats_602:main ItemClip.display.Name

data modify storage ats_602:unit Post[-1].item.tag.mul_602 set from storage ats_602:main ItemClip.mul_602
data modify storage ats_602:unit Post[-1].item.tag.mul1_602 set from storage ats_602:main ItemClip.mul1_602
data modify storage ats_602:unit Post[-1].item.tag.CustomModelData set from storage ats_602:main ItemClip.CustomModelData

data modify entity @s Tags set from storage ats_602:unit Post[-1].Tags
data modify entity @s item set from storage ats_602:unit Post[-1].item
execute store result score @s a2_602 run data get storage ats_602:main ItemClip.602[0]
execute store result score @s addScore_602 run data get storage ats_602:main ItemClip.602[1]
execute store result score @s mulScore0_602 run data get storage ats_602:main ItemClip.602[2]
execute store result score @s mulScore1_602 run data get storage ats_602:main ItemClip.602[3]
execute if score $602 gamemode_602 matches 1 run scoreboard players set @s a1_602 400
execute if score $602 gamemode_602 matches 2..3 run scoreboard players set @s a1_602 500

teleport @s ~ ~ ~ ~ 0

scoreboard players add $602 e1_602 1
execute store result storage ats_602:unit Post[-1].ID int 1 run scoreboard players operation @s e1_602 = $602 e1_602

scoreboard players operation @s e2_602 = $602 e1_602
scoreboard players set @s a_602 5
execute store result score @s b_602 run data get entity @s Rotation[0] 100

data modify storage ats_602:unit Post[-1].Pos set from entity @s Pos

tag @s add tile_602
tag @s add start_602
tag @s add go_602