#Markerとして実行
scoreboard players operation @e[type=sheep,tag=Board_801,scores={ID_801=0}] Count_801 = @e[type=marker,tag=Marker_801,scores={ID_801=0}] Count_801
scoreboard players remove @e[type=sheep,tag=Board_801] ID_801 1
scoreboard players remove @e[type=marker,tag=Marker_801] ID_801 1
execute if entity @e[type=marker,tag=Marker_801,scores={ID_801=0..}] run function ms_801:open/count_sync