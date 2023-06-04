#> ms_801:game/open/super
# すごいハサミ使用
# @internal

# 使用回数処理
scoreboard players remove $SuperCount General_801 1
tellraw @a[scores={playing_000=801}] ["",{"translate":"* %1$s がすごいハサミを使用した！","with":[{"selector":"@s"}]}]
title @a[scores={playing_000=801},nbt={SelectedItem:{id:"minecraft:shears",tag:{801:1b,801Super:1b}}}] actionbar [{"text":"","color":"white","bold":true},{"translate":"すごいハサミ 残り回数 : %1$s 回","with":[{"score":{"name":"$SuperCount","objective":"General_801"}}]}]

# tag追加
tag @s add Shearer_801

# マス特定 ※ID操作
scoreboard players operation @e[type=marker,tag=Marker_801] ID_801 -= @e[type=sheep,tag=Board_801,tag=SuperSheared_801,limit=1] ID_801
tag @e[type=marker,tag=Marker_801,scores={ID_801=0}] add SuperSheared_801
scoreboard players operation @e[type=marker,tag=Marker_801] ID_801 += @e[type=sheep,tag=Board_801,tag=SuperSheared_801,limit=1] ID_801

# 2回目以降オープン
execute if score $GameInfo General_801 matches 2 as @e[type=sheep,tag=Board_801,tag=SuperSheared_801,tag=!Flagged_801,scores={Count_801=0..}] at @s run function ms_801:game/open/open
execute if score $GameInfo General_801 matches 2 as @e[type=sheep,tag=Board_801,tag=SuperSheared_801,tag=!Flagged_801,scores={Count_801=-1}] at @s run function ms_801:game/open/super_mine
execute if score $GameInfo General_801 matches 2 as @e[type=sheep,tag=Board_801,tag=SuperSheared_801,tag=Flagged_801] at @s run data merge entity @s {Sheared:0b}

# bossbar設定
execute store result bossbar disp_801 value run scoreboard players get $Opened General_801
bossbar set disp_801 name [{"translate":"ハズレ数：%1$s  クリアまであと：%2$s","with":[{"score":{"name":"$Mine","objective":"General_801"}},{"score":{"name":"$Remain","objective":"General_801"}}]}]

# 後始末
scoreboard players reset $Tmp General_801
tag @s remove Shearer_801