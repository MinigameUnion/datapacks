#> ms_801:leave
# プレイヤーがゲームから退出時に実行
# 実行者はそのプレイヤー
# @internal

# 各種リセット
team leave @s
clear @s shears{801:1b}
clear @s wheat{801:1b}
clear @s golden_apple{801:1b}
clear @s white_wool{801:1b}

# 共通退出処理
function player_000:leave_game

# プレイヤーが全員いなくなる場合終了
execute unless entity @a[scores={playing_000=801}] run function ms_801:leave_last

# bossbar設定
bossbar set disp_801 players @a[scores={playing_000=801}]
bossbar set time_801 players @a[scores={playing_000=801}]
