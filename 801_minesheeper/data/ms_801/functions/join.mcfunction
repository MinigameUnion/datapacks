#> ms_801:join
# プレイヤー参加時に実行
# 実行者はそのプレイヤー
# @internal

# 共通参加処理
scoreboard players set @s playing_000 801
function player_000:join_game

# 他のプレイヤーがいない場合初期化
execute unless score $PlayerCount General_801 matches 1.. run function ms_801:initialize

# プレイヤー数加算
execute if entity @s[scores={playing_000=801}] run scoreboard players add $PlayerCount General_801 1

# 各種処理
team join 801 @s
tp @s 8000.0 21 0.0 0 0
loot give @s loot ms_801:shears
loot give @s loot ms_801:wheat
loot give @s loot ms_801:golden_apple

# メッセージ
tellraw @s ["",{"text":"[MineSheeper] もし羊が表示されない場合は再ログインしてみてください。"}]

# bossbar設定
bossbar set disp_801 players @a[scores={playing_000=801}]
bossbar set time_801 players @a[scores={playing_000=801}]
