summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["801","Game_801","Marker_801"]}
scoreboard players operation @e[type=area_effect_cloud,tag=Marker_801,distance=..0.01] ID_801 = $Tmp3 General_801
scoreboard players add $Tmp3 General_801 1
scoreboard players remove $Tmp General_801 1
execute if score $Tmp General_801 matches 1.. positioned ~0.1 ~ ~ run function ms_801:game/summon_m_x