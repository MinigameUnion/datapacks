#> ms_801:game/record/nightmare
# 記録更新
# @internal

execute store result score $Tmp2 General_801 run data get storage ms_801:record Nightmare[4].Time
execute if score $Tmp General_801 < $Tmp2 General_801 run scoreboard players set $Tmp3 General_801 5
execute if score $Tmp3 General_801 matches ..5 store result score $Tmp2 General_801 run data get storage ms_801:record Nightmare[3].Time
execute if score $Tmp3 General_801 matches ..5 if score $Tmp General_801 < $Tmp2 General_801 run scoreboard players set $Tmp3 General_801 4
execute if score $Tmp3 General_801 matches ..4 store result score $Tmp2 General_801 run data get storage ms_801:record Nightmare[2].Time
execute if score $Tmp3 General_801 matches ..4 if score $Tmp General_801 < $Tmp2 General_801 run scoreboard players set $Tmp3 General_801 3
execute if score $Tmp3 General_801 matches ..3 store result score $Tmp2 General_801 run data get storage ms_801:record Nightmare[1].Time
execute if score $Tmp3 General_801 matches ..3 if score $Tmp General_801 < $Tmp2 General_801 run scoreboard players set $Tmp3 General_801 2
execute if score $Tmp3 General_801 matches ..2 store result score $Tmp2 General_801 run data get storage ms_801:record Nightmare[0].Time
execute if score $Tmp3 General_801 matches ..2 if score $Tmp General_801 < $Tmp2 General_801 run scoreboard players set $Tmp3 General_801 1
execute if score $Tmp3 General_801 matches 1..5 run function ms_801:game/record/data_make
execute if score $Tmp3 General_801 matches 1..5 run data remove storage ms_801:record Nightmare[-1]
execute if score $Tmp3 General_801 matches 1 run data modify storage ms_801:record Nightmare insert 0 from storage ms_801:record Data
execute if score $Tmp3 General_801 matches 2 run data modify storage ms_801:record Nightmare insert 1 from storage ms_801:record Data
execute if score $Tmp3 General_801 matches 3 run data modify storage ms_801:record Nightmare insert 2 from storage ms_801:record Data
execute if score $Tmp3 General_801 matches 4 run data modify storage ms_801:record Nightmare insert 3 from storage ms_801:record Data
execute if score $Tmp3 General_801 matches 5 run data modify storage ms_801:record Nightmare insert 4 from storage ms_801:record Data