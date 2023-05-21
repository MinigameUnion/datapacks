#> ms_801:setting/triggered_shears
# ハサミ使用時処理
# 決定など
# @internal

# 前処理
tag @s add Shearer_801

# ゲーム開始
execute as 0-0-321-0-0 if entity @s[tag=Sheared_801] run function ms_801:setting/end

# 難易度設定
execute as 0-0-321-0-a if entity @s[tag=Sheared_801] run function ms_801:setting/difficulty/easy
execute as 0-0-321-0-b if entity @s[tag=Sheared_801] run function ms_801:setting/difficulty/normal
execute as 0-0-321-0-c if entity @s[tag=Sheared_801] run function ms_801:setting/difficulty/hard
execute as 0-0-321-0-d if entity @s[tag=Sheared_801] run function ms_801:setting/difficulty/hardcore
execute as 0-0-321-0-e if entity @s[tag=Sheared_801] run function ms_801:setting/difficulty/nightmare

# ナイトメア処理
scoreboard players set $Tmp General_801 10
scoreboard players operation $DifHistory General_801 *= $Tmp General_801
scoreboard players set $Tmp General_801 1000000
scoreboard players operation $DifHistory General_801 %= $Tmp General_801
scoreboard players operation $DifHistory General_801 += $Dif General_801
execute if score $DifHistory General_801 matches 102032 unless entity 0-0-321-0-e run function ms_801:setting/summon_nightmare

# 記録確認
execute as 0-0-321-0-14 if entity @s[tag=Sheared_801] run scoreboard players add $RecordDif General_801 1
execute as 0-0-321-0-14 if entity @s[tag=Sheared_801] if entity 0-0-321-0-e if score $RecordDif General_801 matches 5.. run scoreboard players set $RecordDif General_801 0
execute as 0-0-321-0-14 if entity @s[tag=Sheared_801] unless entity 0-0-321-0-e if score $RecordDif General_801 matches 4.. run scoreboard players set $RecordDif General_801 0
execute as 0-0-321-0-14 if entity @s[tag=Sheared_801] run function ms_801:setting/record/show

# 後始末
tag @s remove Shearer_801
scoreboard players reset $Tmp General_801
