#ゲーム中以外の常時実行

#info
# as,at :player[scores={playing_000=102,_Game_102=10..19}]
# repeat

#参加確認処理
    #常時実行
    execute as @a[scores={_Game_102=11}] run function pac_man_102:game/inactive/pre_start/repeat

#ゲーム開始
    #常時実行
    execute as @a[scores={_Game_102=12}] run function pac_man_102:game/inactive/game_start/repeat

#ステージ開始
    #常時実行
    execute as @a[scores={_Game_102=13}] run function pac_man_102:game/inactive/stage_start/repeat

#ステージ再開
    #常時実行
    execute as @a[scores={_Game_102=14}] run function pac_man_102:game/inactive/stage_restart/repeat

#パックマンやられ演出
    #常時実行
    execute as @a[scores={_Game_102=15}] run function pac_man_102:game/inactive/pacman_death/repeat

#ステージクリア
    #常時実行
    execute as @a[scores={_Game_102=16}] run function pac_man_102:game/inactive/stage_clear/repeat

#ゲームオーバー
    #常時実行
    execute as @a[scores={_Game_102=17}] run function pac_man_102:game/inactive/game_over/repeat

#ゲームオーバー
    #常時実行
    execute as @a[scores={_Game_102=18}] run function pac_man_102:game/inactive/continue/repeat

#CM
    #常時実行
    execute as @a[scores={_Game_102=19}] run function pac_man_102:game/inactive/cm/repeat

