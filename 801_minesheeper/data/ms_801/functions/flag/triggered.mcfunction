#旗立て処理
tag @e[type=sheep,tag=Board_801,tag=Opened_801,nbt=!{ForcedAge:0},distance=..8] add Feeded_801
#effect give @e[tag=Feeded_801] glowing 1 0 true
#子供にあげた場合
execute as @e[type=sheep,tag=Board_801,tag=Feeded_801,tag=Opened_801] run data merge entity @s {Age:-2147483648,ForcedAge:0}
#追加/削除
execute as @e[type=sheep,tag=Board_801,tag=Feeded_801,tag=!Opened_801,tag=!Flagged_801] run function ms_801:flag/add
execute as @e[type=sheep,tag=Board_801,tag=Feeded_801,tag=!Opened_801,tag=Flagged_801] run function ms_801:flag/remove
execute as @e[type=sheep,tag=Feeded_801] run data merge entity @s {InLove:0}
playsound item.armor.equip_leather master @s ~ ~ ~ 1 1.2 1
#後始末
tag @e[tag=Feeded_801] remove Feeded_801
scoreboard players reset $Tmp General_801