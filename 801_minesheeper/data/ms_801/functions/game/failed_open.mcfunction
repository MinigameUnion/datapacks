#地雷が埋まっていた羊が実行者/実行点
execute as @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1},limit=1,sort=random] at @s run function ms_801:game/failed_open_effect
execute if entity @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1}] run schedule function ms_801:game/failed_open 3t append
execute unless entity @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1}] run schedule function ms_801:game/end_wait 20t append