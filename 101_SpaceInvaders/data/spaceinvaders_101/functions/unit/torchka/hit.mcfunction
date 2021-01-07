###
###トーチカの被弾
###

##破壊
#ブロック変化
execute if block ~ ~0.3 ~ minecraft:red_concrete run setblock ~ ~0.3 ~ minecraft:air
execute if block ~ ~0.3 ~ minecraft:orange_concrete run setblock ~ ~0.3 ~ minecraft:red_concrete
execute if block ~ ~0.3 ~ minecraft:yellow_concrete run setblock ~ ~0.3 ~ minecraft:orange_concrete
execute if block ~ ~0.3 ~ minecraft:white_concrete run setblock ~ ~0.3 ~ minecraft:yellow_concrete
#サウンド演出
playsound minecraft:block.stone.break voice @s ~ ~ ~ 2 1.6

##弾の処理
tag @s add hitted_101