data modify storage ats_602:unit List set value {Tags:["tile_602","start_602"],item:{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:602000,mul_602:"x1.0"}}}

data modify storage ats_602:unit List.Tags append from storage ats_602:main ItemClip.Tags[0]
data modify storage ats_602:unit List.transformation.left_rotation set value [0.0f,1.0f,0.0f,0.0f]
execute if score $o_1_602 a_602 matches -1 run data modify storage ats_602:unit List.transformation.scale set value [0.0f,0.0f,0.0f]
data modify storage ats_602:unit List.item.tag.Name set from storage ats_602:main ItemClip.display.Name

data modify storage ats_602:unit List.item.tag.mul_602 set from storage ats_602:main ItemClip.mul_602
data modify storage ats_602:unit List.item.tag.mul1_602 set from storage ats_602:main ItemClip.mul1_602
data modify storage ats_602:unit List.item.tag.CustomModelData set from storage ats_602:main ItemClip.CustomModelData

data modify entity @s Tags set from storage ats_602:unit List.Tags
data modify entity @s item set from storage ats_602:unit List.item
data modify entity @s transformation merge from storage ats_602:unit List.transformation
execute store result score @s a2_602 run data get storage ats_602:main ItemClip.602[0]
execute store result score @s addScore_602 run data get storage ats_602:main ItemClip.602[1]
execute store result score @s mulScore0_602 run data get storage ats_602:main ItemClip.602[2]
execute store result score @s mulScore2_602 run data get storage ats_602:main ItemClip.602[3]
scoreboard players add @s mulScore2_602 1
execute if score $602 gamemode_602 matches 1 run scoreboard players set @s a1_602 400
execute if score $602 gamemode_602 matches 2..3 run scoreboard players set @s a1_602 500

teleport @s ~ ~ ~ ~ 0

scoreboard players add $602 e1_602 1
scoreboard players operation @s e2_602 = $602 e1_602
scoreboard players set @s a_602 5
execute store result score @s b_602 run data get entity @s Rotation[0] 100

tag @s add go_602