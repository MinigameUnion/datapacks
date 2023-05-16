#effect give @s glowing 1 0 true
#ID処理の壁開始--------------------------------------------------
scoreboard players operation @e[type=area_effect_cloud,tag=Marker_801] ID_801 -= @s ID_801
#Queue_801持ってたら消す
tag @e[type=area_effect_cloud,tag=Marker_801,scores={ID_801=0},tag=Queue_801] remove Queue_801
#開放済みtag
tag @e[type=area_effect_cloud,tag=Marker_801,scores={ID_801=0}] add Opened_801
#地雷0の場合連鎖処理予約
execute if entity @s[scores={Count_801=0}] at @e[type=area_effect_cloud,tag=Marker_801,scores={ID_801=0}] run tag @e[type=area_effect_cloud,tag=Marker_801,tag=!Opened_801,distance=0.05..0.15] add Queue_801
scoreboard players operation @e[type=area_effect_cloud,tag=Marker_801] ID_801 += @s ID_801
#ID処理の壁終了--------------------------------------------------

#Queue_801持ってたら消す
tag @s[tag=Queue_801] remove Queue_801
#開放済みtag
tag @s add Opened_801
#羊色変更,地雷時は別途処理
execute if score $CanMove General_801 matches 1 run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.1d}]}
execute if score @s Count_801 matches 0 run data merge entity @s {Sheared:0b,Age:-2147483648,Color:0}
execute if score @s Count_801 matches 1 run data merge entity @s {Sheared:0b,Age:-2147483648,CustomName:'{"text":"1","bold":true,"color":"aqua"}',Color:3}
execute if score @s Count_801 matches 2 run data merge entity @s {Sheared:0b,Age:-2147483648,CustomName:'{"text":"2","bold":true,"color":"green"}',Color:5}
execute if score @s Count_801 matches 3 run data merge entity @s {Sheared:0b,Age:-2147483648,CustomName:'{"text":"3","bold":true,"color":"red"}',Color:6}
execute if score @s Count_801 matches 4 run data merge entity @s {Sheared:0b,Age:-2147483648,CustomName:'{"text":"4","bold":true,"color":"blue"}',Color:11}
execute if score @s Count_801 matches 5 run data merge entity @s {Sheared:0b,Age:-2147483648,CustomName:'{"text":"5","bold":true,"color":"gold"}',Color:12}
execute if score @s Count_801 matches 6 run data merge entity @s {Sheared:0b,Age:-2147483648,CustomName:'{"text":"6","bold":true,"color":"dark_aqua"}',Color:9}
execute if score @s Count_801 matches 7 run data merge entity @s {Sheared:0b,Age:-2147483648,CustomName:'{"text":"7","bold":true,"color":"black"}',Color:15}
execute if score @s Count_801 matches 8 run data merge entity @s {Sheared:0b,Age:-2147483648,CustomName:'{"text":"8","bold":true,"color":"gray"}',Color:8}
execute if score @s Count_801 matches 0.. run team join 801_visible @s
#演出
playsound entity.sheep.ambient master @a[scores={playing_000=801}] ~ ~ ~ 1 1.2 1

#score変更
scoreboard players add $Opened General_801 1
scoreboard players remove $Remain General_801 1
#得点用wool
execute if entity @s[scores={Count_801=0..}] run loot give @a[tag=Shearer_801,limit=1] loot ms_801:wool

#地雷なら終了
execute if entity @s[scores={Count_801=-1}] run function ms_801:game/failed
#全部開いたら終了
execute if entity @s[scores={Count_801=0..}] unless entity @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=0..}] run function ms_801:game/succeeded

#連鎖処理予約処理(多重処理回避のため一つずつ回していく)
execute as @e[type=area_effect_cloud,tag=Marker_801,tag=Queue_801,limit=1] run function ms_801:open/queue