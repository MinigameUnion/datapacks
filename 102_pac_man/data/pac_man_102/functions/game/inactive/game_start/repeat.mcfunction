#ゲーム開始 常時実行

#info
# as,at: @a[scores={_Game_102=12}]
# repeat

#タイマー進行
scoreboard players remove @s _Timer_102 1

#イントロ
execute if score @s _Timer_102 matches 99 run function pac_man_102:sound/intro/loop

#プレイヤーの固定
function pac_man_102:mobs/player/pos

#ステージ開始に移行
execute if score @s _Timer_102 matches 0 run function pac_man_102:game/inactive/stage_start/init