#> ms_801:game/coin/time_upper
# タイム補正(上限)
# プレイヤー毎に実行
# @internal

scoreboard players set $Tmp2 General_801 100
scoreboard players operation $Tmp2 General_801 *= $Tmp General_801
scoreboard players operation $Tmp2 General_801 /= @s add_coin_000
tellraw @s ["",{"translate":"・タイム補正： x%1$s%%","with":[{"score":{"name":"$Tmp2","objective":"General_801"}}]}]
scoreboard players operation @s add_coin_000 = $Tmp General_801