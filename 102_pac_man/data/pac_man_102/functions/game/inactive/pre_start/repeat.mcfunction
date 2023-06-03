#ゲーム参加確認 常時実行

#info
# as,at: @a[scores={_Game_102=11}]
# repeat

#タイマー進行
scoreboard players remove @s _Timer_102 1

#演出
execute store result bossbar pac_man_102:pre_start value run scoreboard players get @s _Timer_102
title @s actionbar {"translate":"ゲームに参加しない場合は%sください","color":"white","bold":true,"with":[{"text":"リンゴを捨てて","color":"red","bold":true}]}
execute if score @s _Timer_102 matches 100 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute if score @s _Timer_102 matches 80 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute if score @s _Timer_102 matches 60 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute if score @s _Timer_102 matches 40 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute if score @s _Timer_102 matches 20 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1

#アイテムを捨てた時の処理
execute unless data entity @s Inventory[].tag.PreStart run function pac_man_102:reset

#ゲーム開始に移行
execute if score @s _Timer_102 matches 0 run function pac_man_102:game/inactive/game_start/init