#> ms_801:game/coin/noflag
# 付与コイン計算(目印なしボーナス)
# @internal

scoreboard players set $Tmp General_801 110
scoreboard players set $Tmp2 General_801 100
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 *= $Tmp General_801
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 /= $Tmp2 General_801
tellraw @a[scores={playing_000=801}] ["",{"translate":"・目印なしボーナス： x%1$s%%","with":[{"score":{"name":"$Tmp","objective":"General_801"}}]}]