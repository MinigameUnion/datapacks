#> ms_801:game/flag/triggered
# 小麦使用時処理
# @internal

# 子供にあげた場合
execute as @e[type=sheep,tag=Board_801,tag=Feeded_801,tag=Opened_801] run data merge entity @s {Age:-2147483648,ForcedAge:0}
# 追加/削除
execute if score $GameInfo General_801 matches 2 as @e[type=sheep,tag=Board_801,tag=Feeded_801,tag=!Opened_801,tag=!Flagged_801] run function ms_801:game/flag/add
execute as @e[type=sheep,tag=Board_801,tag=Feeded_801,tag=!Opened_801,tag=Flagged_801] run function ms_801:game/flag/remove

# 説明
execute as 0-0-321-ffff-ffff00000000 if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：ゲームを終了します。%2$s","with":[{"text":"終了","color":"gray","bold":true},{"text":"ミニは獲得できません。","underlined":true}]}]
execute as 0-0-321-ffff-ffffffffffff if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：ゲームから退出します。%2$s","with":[{"text":"退出","color":"dark_green","bold":true},{"text":"進行中のゲームは終了する可能性があります。","underlined":true}]}]

# 後始末
scoreboard players reset $Tmp General_801