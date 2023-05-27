#> ms_801:game/open/queue
# 連鎖オープンの予約処理
# @internal

# 多重処理回避のため一つずつ回していく
scoreboard players operation $Tmp General_801 = @s ID_801
execute as @e[type=sheep,tag=Board_801,tag=!Opened_801] if score @s ID_801 = $Tmp General_801 run tag @s add Queue_801
execute as @e[type=sheep,tag=Board_801,tag=Queue_801] at @s run function ms_801:game/open/open