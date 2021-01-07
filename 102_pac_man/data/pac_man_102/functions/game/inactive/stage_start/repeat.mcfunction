#ステージ開始 常時実行

#info
# as,at: @a[scores={_Game_102=13}]
# repeat

#タイマー進行
scoreboard players remove @s _Timer_102 1

#タイトル演出
execute if score @s _Timer_102 matches 30..70 run title @s subtitle {"translate":"round %s","with":[{"storage":"pac_man_102","nbt":"Patterns[0].Pattern"}]}
execute if score @s _Timer_102 matches 0..30 run title @s subtitle {"text":"ready !","color":"gold","bold":true}
title @s times 0 2 0
title @s title {"text":""}

#プレイヤーの固定
function pac_man_102:mobs/player/pos
#ゲームプレイ中に移行
execute if score @s _Timer_102 matches 0 run function pac_man_102:game/active/init