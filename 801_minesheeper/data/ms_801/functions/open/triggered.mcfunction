#> ms_801:open/triggered
# マスのオープン処理
# @internal

# tag追加
tag @s add Shearer_801

# マス特定 ※ID操作
scoreboard players operation @e[type=marker,tag=Marker_801] ID_801 -= @e[type=sheep,tag=Board_801,tag=Sheared_801,limit=1] ID_801
tag @e[type=marker,tag=Marker_801,scores={ID_801=0}] add Sheared_801
scoreboard players operation @e[type=marker,tag=Marker_801] ID_801 += @e[type=sheep,tag=Board_801,tag=Sheared_801,limit=1] ID_801

# 初回オープン
execute if score $GameInfo General_801 matches 1 run function ms_801:open/first

# 2回目以降オープン
execute if score $GameInfo General_801 matches 2 as @e[type=sheep,tag=Board_801,tag=Sheared_801,tag=!Flagged_801] at @s run function ms_801:open/open
execute if score $GameInfo General_801 matches 2 as @e[type=sheep,tag=Board_801,tag=Sheared_801,tag=Flagged_801] at @s run data merge entity @s {Sheared:0b}

# bossbar設定
execute store result bossbar disp_801 value run scoreboard players get $Opened General_801
bossbar set disp_801 name [{"translate":"ハズレ数：%1$s  クリアまであと：%2$s","with":[{"score":{"name":"$Mine","objective":"General_801"}},{"score":{"name":"$Remain","objective":"General_801"}}]}]

# 後始末
scoreboard players reset $Tmp General_801
tag @s remove Shearer_801