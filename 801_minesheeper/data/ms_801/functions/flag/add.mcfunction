#旗追加
scoreboard players set $UsedFlag General_801 1
tag @s add Flagged_801
data merge entity @s {CustomName:'{"text":"▼","color":"dark_red","bold":true}',Color:14,InLove:0}
#後始末
tag @s remove Feeded_801