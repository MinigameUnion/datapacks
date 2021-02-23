#難易度
scoreboard players set $Dif General_801 0
#盤面大きさ
scoreboard players set $X General_801 9
scoreboard players set $Z General_801 9
#地雷個数
scoreboard players set $Mine General_801 10
#羊が動くか
scoreboard players set $CanMove General_801 0
#Glowing変更
execute as @e[type=sheep,tag=SettingDif_801] run data merge entity @s {Glowing:0b}
data merge entity @s {Glowing:1b,Sheared:0b}