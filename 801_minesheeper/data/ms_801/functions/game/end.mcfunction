#終了
tp @e[tag=Game_801] 8000 -100 0
kill @e[tag=Game_801]
bossbar set disp_801 color white
bossbar set time_801 visible false
clear @a[scores={playing_000=801}] white_wool{801:1b}
kill @e[type=item,nbt={Item:{tag:{801:1b}}}]
#予約キャンセル
schedule clear ms_801:game/end_wait
schedule clear ms_801:game/failed_open
schedule clear ms_801:game/succeeded_open
#演出
tellraw @a[scores={playing_000=801}] {"text":"MineSheeperを終了します..."}
#設定へ
function ms_801:setting/start