#> ms_801:join
# プレイヤー参加時に実行
# 実行者はそのプレイヤー
# @internal

# 共通参加処理
scoreboard players set @s playing_000 801
function player_000:join_game

# 退出用羊がいない場合初期化
execute unless entity 0-0-321-ffff-ffffffffffff run function ms_801:init

# 各種処理
team join 801 @s
tp @s 8000.0 21 0.0 0 0
function ms_801:give_item

tellraw @s ["",{"translate":"%1$s %2$s へようこそ！ %1$s\nマインスイーパーの羊バージョンです。ハズレの羊を避けてすべての羊の毛を刈るとクリアです。複数人でプレイできます！","with":[{"text":".....","color":"gray","obfuscated":true},{"text":"Mine Sheeper","underlined":true,"bold":true}]}]

# bossbar設定
bossbar set disp_801 players @a[scores={playing_000=801}]
bossbar set time_801 players @a[scores={playing_000=801}]
