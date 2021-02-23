#誰かがloginしたときに実行
#bossbar設定
bossbar set disp_801 players @a[scores={playing_000=801}]
bossbar set time_801 players @a[scores={playing_000=801}]

#バグ解消用
execute unless entity 0-0-321-ffff-ffffffffffff run schedule function ms_801:initialize 2t