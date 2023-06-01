#> ms_801:login/this
# このゲームをプレイ中(だった)プレイヤーのlogin時に実行
# 実行者はそのプレイヤー
# @internal

# bossbar設定
bossbar set disp_801 players @a[scores={playing_000=801}]
bossbar set time_801 players @a[scores={playing_000=801}]

# バグ回避用
clear @s shears{801:1b}
clear @s wheat{801:1b}
clear @s golden_apple{801:1b}
clear @s white_wool{801:1b}
function ms_801:give_item

schedule function ms_801:login/delay 10t replace