#> ms_801:game/coin/time_lower
# タイム補正(下限)
# プレイヤー毎に実行
# @internal

scoreboard players set $Tmp2 General_801 100
scoreboard players operation $Tmp2 General_801 *= $Tmp General_801
scoreboard players operation $Tmp2 General_801 /= @s add_coin_000
scoreboard players set $Tmp3 General_801 1000
scoreboard players operation $Tmp2 General_801 < $Tmp3 General_801
tellraw @a[scores={playing_000=801}] ["",{"translate":"・タイム補正： x%1$s%%","with":[{"score":{"name":"$Tmp2","objective":"General_801"}}]}]
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 *= $Tmp2 General_801
scoreboard players set $Tmp3 General_801 100
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 /= $Tmp3 General_801