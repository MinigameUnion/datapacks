###
###UFO被弾
###

#撃墜演出用エンティティ
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: 100, WaitTime: -2147483648, Tags: [UFO_beated_101,Entity_101,temp]}
scoreboard players operation @e[tag=temp] Id_101 = @s Id_101
tag @e[tag=temp] remove temp

#消滅
kill @s

##弾の処理
tag @e[tag=BulletOfPlayer_101,scores={Group_101=1}] add hitted_101

##得点の処理
scoreboard players operation #ufo_point operation_101 = @a[scores={Group_101=1,playing_000=101}] ShotCount_101
scoreboard players add #ufo_point operation_101 7
scoreboard players operation #ufo_point operation_101 %= #_const_15 operation_101
execute if score #ufo_point operation_101 matches 0 run scoreboard players add #_point_add operation_101 300
execute if score #ufo_point operation_101 matches 1..5 run scoreboard players add #_point_add operation_101 50
execute if score #ufo_point operation_101 matches 6..10 run scoreboard players add #_point_add operation_101 150
execute if score #ufo_point operation_101 matches 11..14 run scoreboard players add #_point_add operation_101 100