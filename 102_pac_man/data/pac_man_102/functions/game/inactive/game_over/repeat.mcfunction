#> pac_man_102:game/inactive/game_over/repeat
### ゲームオーバー 常時実行

#info
# as,at:player(score{Game_102=17})
# repeat

## タイマー進行
    scoreboard players remove @s _Timer_102 1

## タイトル表示
    execute if score @s _Timer_102 matches 77..79 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":"G","color":"red"}'
    execute if score @s _Timer_102 matches 74..76 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":"GA","color":"red"}'
    execute if score @s _Timer_102 matches 71..73 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":"GAM","color":"red"}'
    execute if score @s _Timer_102 matches 68..70 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":"GAME","color":"red"}'
    execute if score @s _Timer_102 matches 65..67 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":"GAME ","color":"red"}'
    execute if score @s _Timer_102 matches 61..63 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":"GAME O","color":"red"}'
    execute if score @s _Timer_102 matches 58..60 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":"GAME OV","color":"red"}'
    execute if score @s _Timer_102 matches 55..57 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":"GAME OVE","color":"red"}'
    execute if score @s _Timer_102 matches 1..53 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":"GAME OVER","color":"red"}'
    execute if score @s _Timer_102 matches 0 run data modify entity @e[tag=Display_102,type=text_display,limit=1] text set value '{"text":""}'

## プレイヤーの固定
    function pac_man_102:mobs/player/pos

## コンテニュー画面へ移行
    execute if score @s _Timer_102 matches 3 if score @s coin_000 matches 300.. run function pac_man_102:game/inactive/continue/init

## ゲームのリセット
    execute if score @s _Timer_102 matches 0 run function pac_man_102:reset