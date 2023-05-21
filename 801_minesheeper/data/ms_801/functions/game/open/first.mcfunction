#> ms_801:game/open/first
# 初回オープン時
# @internal

# 地雷設置処理
scoreboard players operation $Tmp General_801 = $Mine General_801
function ms_801:game/open/mine_randomize
scoreboard players set @e[type=marker,tag=Marker_801,tag=Mine_801] Count_801 -1

# 周囲の地雷の数計算
execute as @e[type=marker,tag=Marker_801,tag=!Mine_801] at @s store result score @s Count_801 run execute if entity @e[type=marker,tag=Marker_801,tag=Mine_801,distance=0.05..0.15]
# 羊に代入
scoreboard players operation $Tmp General_801 = $X General_801
scoreboard players operation $Tmp General_801 *= $Z General_801
function ms_801:game/open/count_sync
scoreboard players operation @e[type=sheep,tag=Board_801] ID_801 += $Tmp General_801
scoreboard players operation @e[type=marker,tag=Marker_801] ID_801 += $Tmp General_801

# 状態移行
scoreboard players set $GameInfo General_801 2

# 演出
execute at @e[type=sheep,tag=Sheared_801] run playsound minecraft:entity.bat.takeoff master @a[scores={playing_000=801}] ~ ~ ~ 1 1.2 1

# タイマーリセット
scoreboard players set $Tick General_801 0
scoreboard players set $Time General_801 0
bossbar set time_801 color blue