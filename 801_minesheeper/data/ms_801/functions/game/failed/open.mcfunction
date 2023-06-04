#> ms_801:game/failed/open
# ゲームオーバー時地雷オープン処理
# @internal

execute as @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1},limit=1,sort=random] at @s run function ms_801:game/failed/open_effect
execute if score $Mine General_801 matches 40.. as @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1},limit=1,sort=random] at @s run function ms_801:game/failed/open_effect
execute if score $Mine General_801 matches 80.. as @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1},limit=1,sort=random] at @s run function ms_801:game/failed/open_effect
execute if entity @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1}] run schedule function ms_801:game/failed/open 3t append
execute unless entity @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1}] run schedule function ms_801:game/end/wait 20t append