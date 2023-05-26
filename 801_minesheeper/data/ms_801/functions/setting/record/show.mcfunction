#> ms_801:setting/record/show
# 記録表示
# @internal

# 記録表示
data merge entity @s {Sheared:0b}
scoreboard players set $Tmp3 General_801 20
scoreboard players set $Tmp4 General_801 5
execute if score $RecordDif General_801 matches 0 run function ms_801:setting/record/show/easy
execute if score $RecordDif General_801 matches 1 run function ms_801:setting/record/show/normal
execute if score $RecordDif General_801 matches 2 run function ms_801:setting/record/show/hard
execute if score $RecordDif General_801 matches 3 run function ms_801:setting/record/show/hardcore
execute if score $RecordDif General_801 matches 4 run function ms_801:setting/record/show/nightmare

# 後始末
scoreboard players reset $Tmp General_801
scoreboard players reset $Tmp2 General_801
scoreboard players reset $Tmp3 General_801
scoreboard players reset $Tmp4 General_801
