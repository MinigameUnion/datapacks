#> ms_801:leave
# プレイヤーがゲームから退出時に実行
# 実行者はそのプレイヤー
# @internal

# プレイヤー数確認
execute if entity @s[scores={playing_000=801}] run scoreboard players remove $PlayerCount General_801 1
execute unless score $PlayerCount General_801 matches 1.. run function ms_801:leave_last

# 各種リセット
team leave @s
clear @s shears{801:1b}
clear @s wheat{801:1b}
clear @s golden_apple{801:1b}
clear @s white_wool{801:1b}

# 共通退出処理
function player_000:leave_game

# bossbar設定
bossbar set disp_801 players @a[scores={playing_000=801}]
bossbar set time_801 players @a[scores={playing_000=801}]
