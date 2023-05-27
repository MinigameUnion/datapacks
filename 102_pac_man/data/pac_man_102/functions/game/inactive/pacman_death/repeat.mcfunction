#パックマンやられ演出 常時実行

#info
# as,at: @a[scores={_Game_102=15}]
# repeat

#タイマー進行
scoreboard players remove @s _Timer_102 1

#モデル演出
execute if score @s _Timer_102 matches 51 run data merge entity @e[tag=PacMan_body_102,type=item_display,limit=1] {transformation:{left_rotation:{axis:[0f,1f,0f],angle:3.14115f}}}
execute if score @s _Timer_102 matches 51 run data modify entity @e[tag=PacMan_body_102,type=item_display,limit=1] item.tag.CustomModelData set value 1007
execute if score @s _Timer_102 matches 47 run data modify entity @e[tag=PacMan_body_102,type=item_display,limit=1] item.tag.CustomModelData set value 1008
execute if score @s _Timer_102 matches 43 run data modify entity @e[tag=PacMan_body_102,type=item_display,limit=1] item.tag.CustomModelData set value 1009 
execute if score @s _Timer_102 matches 39 run data modify entity @e[tag=PacMan_body_102,type=item_display,limit=1] item.tag.CustomModelData set value 1010
execute if score @s _Timer_102 matches 35 run data modify entity @e[tag=PacMan_body_102,type=item_display,limit=1] item.tag.CustomModelData set value 1011
execute if score @s _Timer_102 matches 31 run data modify entity @e[tag=PacMan_body_102,type=item_display,limit=1] item.tag.CustomModelData set value 1012
execute if score @s _Timer_102 matches 27 run data modify entity @e[tag=PacMan_body_102,type=item_display,limit=1] item.tag.CustomModelData set value 1013
execute if score @s _Timer_102 matches 23 run data modify entity @e[tag=PacMan_body_102,type=item_display,limit=1] item.tag.CustomModelData set value 1014
execute if score @s _Timer_102 matches 19 run data modify entity @e[tag=PacMan_body_102,type=item_display,limit=1] item.tag.CustomModelData set value 1015
execute if score @s _Timer_102 matches 15 run data modify entity @e[tag=PacMan_body_102,type=item_display,limit=1] item.tag.CustomModelData set value 1016

#サウンド
execute if score @s _Timer_102 matches 55 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.07
execute if score @s _Timer_102 matches 53 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.1
execute if score @s _Timer_102 matches 51 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.07
execute if score @s _Timer_102 matches 49 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.04

execute if score @s _Timer_102 matches 47 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.05
execute if score @s _Timer_102 matches 45 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.08
execute if score @s _Timer_102 matches 43 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.05
execute if score @s _Timer_102 matches 41 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.02

execute if score @s _Timer_102 matches 39 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.03
execute if score @s _Timer_102 matches 37 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.06
execute if score @s _Timer_102 matches 35 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.03
execute if score @s _Timer_102 matches 33 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.00

execute if score @s _Timer_102 matches 31 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.01
execute if score @s _Timer_102 matches 29 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.04
execute if score @s _Timer_102 matches 27 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.01
execute if score @s _Timer_102 matches 25 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 0.98

execute if score @s _Timer_102 matches 23 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 0.99
execute if score @s _Timer_102 matches 21 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.02
execute if score @s _Timer_102 matches 19 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 0.99
execute if score @s _Timer_102 matches 17 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 0.96

execute if score @s _Timer_102 matches 15 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.2
execute if score @s _Timer_102 matches 10 run playsound minecraft:block.note_block.harp voice @a ~ ~ ~ 2 1.2

#モード移行
    #残機があるとき 再スタート
    execute if entity @s[scores={_Timer_102=..0,_HP_102=0..}] run function pac_man_102:game/inactive/stage_restart/init
    #残機が無くなったら ゲームオーバー
    execute if entity @s[scores={_Timer_102=..0,_HP_102=..-1}] run function pac_man_102:game/inactive/game_over/init

#プレイヤーの固定
function pac_man_102:mobs/player/pos