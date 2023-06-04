#> ms_801:game/summon/sheep_z
# @internal

scoreboard players operation $Tmp General_801 = $X General_801
function ms_801:game/summon/sheep_x
scoreboard players remove $Tmp2 General_801 1
execute unless score $IsWide General_801 matches 1 if score $Tmp2 General_801 matches 1.. positioned ~ ~ ~1.5 run function ms_801:game/summon/sheep_z
execute if score $IsWide General_801 matches 1 if score $Tmp2 General_801 matches 1.. positioned ~ ~ ~3.0 run function ms_801:game/summon/sheep_z