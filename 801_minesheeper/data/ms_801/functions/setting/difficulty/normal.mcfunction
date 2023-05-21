#> ms_801:setting/difficulty/normal
# 難易度データ
# @internal

# 設定
scoreboard players set $Dif General_801 1
scoreboard players set $X General_801 16
scoreboard players set $Z General_801 16
scoreboard players set $Mine General_801 40
scoreboard players set $CanMove General_801 0
scoreboard players set $IsWide General_801 0

# Glowing変更
execute as @e[type=sheep,tag=SettingDif_801] run data merge entity @s {Glowing:0b}
data merge entity @s {Glowing:1b,Sheared:0b}
