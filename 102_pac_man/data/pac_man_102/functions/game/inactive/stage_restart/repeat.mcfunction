#> pac_man_102:game/inactive/stage_restart/repeat
### 再スタート リピート

#info
# as,at : @a[scores={_Game_102=14}]

## タイマー進行
    scoreboard players remove @s _Timer_102 1

## タイトル演出
    execute if score @s _Timer_102 matches 0..30 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":"ready !","color":"gold","bold":true}'
    execute if score @s _Timer_102 matches 0 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":""}'

## プレイヤーの固定
    function pac_man_102:mobs/player/pos

## ゲームプレイ中に移行
    execute if score @s _Timer_102 matches 0 run function pac_man_102:game/active/init