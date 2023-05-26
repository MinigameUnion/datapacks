#> ms_801:game/coin/mvp
# MVP(獲得コイン最大)計算
# @internal

scoreboard players operation $Tmp General_801 = @s General_801
scoreboard players operation @a[scores={playing_000=801}] General_801 -= $Tmp General_801
execute unless entity @a[scores={playing_000=801,General_801=1..}] run tag @s add MVP_801
scoreboard players operation @a[scores={playing_000=801}] General_801 += $Tmp General_801