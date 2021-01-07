###
###ufo移動
###

#移動
tp @s ~-0.2 ~ ~
#削除
execute at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10 81 -45.6 run kill @s[dx=0,dy=3,dz=0]
#顔
data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
#タグ
tag @s add Moving_101

#サウンド演出
execute at @a[scores={Group_101=1,playing_000=101}] run playsound minecraft:block.note_block.banjo voice @a ~ ~ ~ 1 0.7
execute at @e[scores={Group_101=1,playing_000=101}] run playsound minecraft:block.note_block.banjo voice @a ~ ~ ~ 1 0.3