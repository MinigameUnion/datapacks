#> ms_801:game/end/triggered
# ゲーム終了トリガー
# @internal


execute if score $GameInfo General_801 matches 2 run scoreboard players set $Succeeded General_801 0
execute as @e[type=sheep,tag=Sheared_801] run data merge entity @s {Sheared:0b}
execute as 0-0-321-ffff-ffff00000000 if entity @s[tag=Sheared_801] if score $GameInfo General_801 matches 2..3 run function ms_801:game/coin/root
execute as 0-0-321-ffff-ffff00000000 if entity @s[tag=Sheared_801] run function ms_801:game/end/root
