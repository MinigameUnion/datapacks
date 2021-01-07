###
###敵機の設置
###

##id同期
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101] store success score @s Group_101 if score @s Id_101 = #_id Id_101

##召喚
#既存の敵機を削除
kill @e[tag=Invader_101,scores={Group_101=1}]
#1段
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-6 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-4.8 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-3.6 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-2.4 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-1.2 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~ 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~1.2 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~2.4 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~3.6 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~4.8 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~6 73.8 -46 {Tags:[Invader_101,Zombie_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:zombie_head",Count:1b},{},{},{}]}
#2段
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-6 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-4.8 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-3.6 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-2.4 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-1.2 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~ 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~1.2 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~2.4 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~3.6 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~4.8 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~6 75.1 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
#3段
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-6 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-4.8 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-3.6 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-2.4 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-1.2 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~ 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~1.2 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~2.4 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~3.6 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~4.8 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~6 76.4 -46 {Tags:[Invader_101,Skeleton_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:skeleton_skull",Count:1b},{},{},{}]}
#4段
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-6 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-4.8 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-3.6 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-2.4 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-1.2 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~ 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~1.2 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~2.4 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~3.6 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~4.8 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~6 77.7 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
#5段
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-6 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-4.8 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-3.6 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-2.4 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~-1.2 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~ 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~1.2 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~2.4 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~3.6 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~4.8 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~6 79 -46 {Tags:[Invader_101,Creeper_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:creeper_head",Count:1b},{},{},{}]}

#体力設定
scoreboard players operation #_temp operation_101 = @s Stage_101
scoreboard players operation #_temp operation_101 /= #_const_10 operation_101
scoreboard players operation @e[tag=temp] HP_101 = #_temp operation_101
scoreboard players add @e[tag=temp] HP_101 1

#初期位置
scoreboard players operation #_temp operation_101 = @s Stage_101
scoreboard players remove #_temp operation_101 1
scoreboard players operation #_temp operation_101 %= #_const_8 operation_101
execute if score #_temp operation_101 matches 1 as @e[tag=temp] at @s run tp @s ~ ~-1 ~
execute if score #_temp operation_101 matches 2 as @e[tag=temp] at @s run tp @s ~ ~-2 ~
execute if score #_temp operation_101 matches 3 as @e[tag=temp] at @s run tp @s ~ ~-3 ~
execute if score #_temp operation_101 matches 4 as @e[tag=temp] at @s run tp @s ~ ~-4 ~
execute if score #_temp operation_101 matches 5 as @e[tag=temp] at @s run tp @s ~ ~-5 ~
execute if score #_temp operation_101 matches 6 as @e[tag=temp] at @s run tp @s ~ ~-6 ~
execute if score #_temp operation_101 matches 7 as @e[tag=temp] at @s run tp @s ~ ~-7 ~

#idの設定
scoreboard players operation @e[tag=temp] Id_101 = @s id_000
tag @e[tag=temp] remove temp