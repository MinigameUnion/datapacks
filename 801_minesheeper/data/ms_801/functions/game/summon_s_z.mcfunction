scoreboard players operation $Tmp General_801 = $X General_801
function ms_801:game/summon_s_x
scoreboard players remove $Tmp2 General_801 1
execute if score $Tmp2 General_801 matches 1.. positioned ~ ~ ~1.5 run function ms_801:game/summon_s_z