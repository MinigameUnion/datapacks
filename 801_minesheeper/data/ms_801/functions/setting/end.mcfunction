#設定終了=ゲーム開始
tp @e[tag=Setting_801] 8000 -100 0
kill @e[tag=Setting_801]
#演出
tellraw @a[scores={playing_000=801}] {"text":"MineSheeperを開始します..."}
playsound entity.player.levelup master @a[scores={playing_000=801}] 8000.0 15 0.0 1 0.7 1

#予約
schedule function ms_801:game/start 1s append