#コンテニュー常時実行

#info
# as,at:player(score{Game_102=18})
# repeat

#タイマー進行
scoreboard players remove @s _Timer_102 1

#演出
execute store result bossbar pac_man_102:continue value run scoreboard players get @s _Timer_102
title @s actionbar {"translate":"%sとコンティニュー(300ミニ消費)","color":"white","with":[{"text":"リンゴを捨てる","color":"red","bold":true}]}
execute if score @s _Timer_102 matches 100 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute if score @s _Timer_102 matches 80 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute if score @s _Timer_102 matches 60 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute if score @s _Timer_102 matches 40 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1
execute if score @s _Timer_102 matches 20 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1

#リンゴを捨てた場合は再開
execute unless data entity @s {Inventory:[{tag:{Continue:1b}}]} run kill @e[type=item,nbt={Item:{tag:{Continue:1b}}}]
execute unless data entity @s {Inventory:[{tag:{Continue:1b}}]} run scoreboard players set @s _HP_102 3
execute unless data entity @s {Inventory:[{tag:{Continue:1b}}]} run bossbar remove pac_man_102:pre_start
execute unless data entity @s {Inventory:[{tag:{Continue:1b}}]} run scoreboard players set @s remove_coin_000 300
execute unless data entity @s {Inventory:[{tag:{Continue:1b}}]} run function pac_man_102:game/inactive/stage_start/init

#プレイヤーの固定
function pac_man_102:mobs/player/pos

#ゲーム終了に移行
execute if score @s _Timer_102 matches 0 run function pac_man_102:reset