#> ms_801:game/coin/time
# タイム補正
# MVP として実行
# @internal

# 下限
scoreboard players set $Tmp General_801 20
scoreboard players operation $Tmp General_801 *= $Time General_801
scoreboard players operation $Tmp General_801 += $Tick General_801
scoreboard players set $Tmp2 General_801 80
execute if score $Dif General_801 matches 0 run scoreboard players set $Tmp2 General_801 70
execute if score $CanMove General_801 matches 2 run scoreboard players set $Tmp2 General_801 380
scoreboard players operation $Tmp General_801 *= $Tmp2 General_801
scoreboard players set $Tmp2 General_801 1200
scoreboard players operation $Tmp General_801 /= $Tmp2 General_801
execute if score @s add_coin_000 < $Tmp General_801 run function ms_801:game/coin/time_lower

# 上限
scoreboard players set $Tmp General_801 20
scoreboard players operation $Tmp General_801 *= $Time General_801
scoreboard players operation $Tmp General_801 += $Tick General_801
scoreboard players set $Tmp2 General_801 120
execute if score $Dif General_801 matches 0 run scoreboard players set $Tmp2 General_801 110
execute if score $CanMove General_801 matches 2 run scoreboard players set $Tmp2 General_801 420
scoreboard players operation $Tmp General_801 *= $Tmp2 General_801
scoreboard players set $Tmp2 General_801 1200
scoreboard players operation $Tmp General_801 /= $Tmp2 General_801
execute if score @s add_coin_000 > $Tmp General_801 run function ms_801:game/coin/time_upper