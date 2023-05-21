#> ms_801:game/end_triggered
# ゲーム終了トリガー
# @internal

execute as @e[type=sheep,tag=Sheared_801] run data merge entity @s {Sheared:0b}
execute as 0-0-321-ffff-ffff00000000 if entity @s[tag=Sheared_801] run function ms_801:game/end