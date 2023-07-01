data modify storage ats_602:unit List set value {Tags:["tile_602","start_602"],item:{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:602000,mul_602:"x1.0"}}}

data modify storage ats_602:unit List.Tags append value "turtle_baby_602"
data modify storage ats_602:unit List.transformation set value {scale:[0.3f,0.3f,0.3f]}
data modify storage ats_602:unit List.item.tag.Name set value '{"bold":true,"italic":false,"color":"blue","text":"コガメ (アオウミガメ)"}'

data modify storage ats_602:unit List.item.tag.mul_602 set value "x1.4"
data modify storage ats_602:unit List.item.tag.mul1_602 set value "1.2"
data modify storage ats_602:unit List.item.tag.CustomModelData set value 6031

data modify entity @s Tags set from storage ats_602:unit List.Tags
data modify entity @s item set from storage ats_602:unit List.item
data modify entity @s transformation merge from storage ats_602:unit List.transformation
execute if score $602 gamemode_602 matches 1 run scoreboard players set @s a1_602 400
execute if score $602 gamemode_602 matches 2..3 run scoreboard players set @s a1_602 500
scoreboard players set @s a2_602 2
scoreboard players set @s addScore_602 10
scoreboard players set @s mulScore0_602 18
scoreboard players set @s mulScore2_602 3

teleport @s ~ ~ ~ ~ 0

scoreboard players add $602 e1_602 1
scoreboard players operation @s e2_602 = $602 e1_602
scoreboard players set @s a_602 5
execute store result score @s b_602 run data get entity @s Rotation[0] 100

tag @s add go_602
tag @s add hit_602