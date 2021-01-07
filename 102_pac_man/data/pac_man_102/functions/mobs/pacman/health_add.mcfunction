#残機の増加

#info
# as,at: info

#タイマーの進行
scoreboard players remove #health_add_102 _Timer_102 1

#残機の増加
execute if score #health_add_102 _Timer_102 matches 29 run scoreboard players add @s _HP_102 1
#表示の変更
execute if score #health_add_102 _Timer_102 matches 29 as @e[tag=PacMan_Health_102] if score @s _Operation_102 > @a[tag=Playing_102,limit=1] _HP_102 run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if score #health_add_102 _Timer_102 matches 29 as @e[tag=PacMan_Health_102] if score @s _Operation_102 <= @a[tag=Playing_102,limit=1] _HP_102 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b,tag:{CustomModelData:1003}}]}

#サウンド
execute if score #health_add_102 _Timer_102 matches 29 run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 2 2

execute if score #health_add_102 _Timer_102 matches 25 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 0.4
execute if score #health_add_102 _Timer_102 matches 20 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 0.4
execute if score #health_add_102 _Timer_102 matches 15 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 0.4
execute if score #health_add_102 _Timer_102 matches 10 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 0.4
execute if score #health_add_102 _Timer_102 matches 5 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 0.4