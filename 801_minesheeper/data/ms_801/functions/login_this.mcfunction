#> ms_801:login_this
# このゲームをプレイ中(だった)プレイヤーのlogin時に実行
# 実行者はそのプレイヤー
# @internal

# bossbar設定
bossbar set disp_801 players @a[scores={playing_000=801}]
bossbar set time_801 players @a[scores={playing_000=801}]

# バグ回避用
schedule function ms_801:initialize_wait 20t
clear @s shears{801:1b}
clear @s wheat{801:1b}
clear @s golden_apple{801:1b}
clear @s white_wool{801:1b}
loot give @s loot ms_801:shears
loot give @s loot ms_801:wheat
loot give @s loot ms_801:golden_apple
