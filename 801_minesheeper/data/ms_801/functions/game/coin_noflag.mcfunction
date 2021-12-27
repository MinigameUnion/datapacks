#旗未使用
scoreboard players set $Tmp2 General_801 150
scoreboard players set $Tmp3 General_801 100
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 *= $Tmp2 General_801
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 /= $Tmp3 General_801
tellraw @a[scores={playing_000=801}] ["",{"translate":"・旗なしボーナス： x%1$s%%","with":[{"score":{"name":"$Tmp2","objective":"General_801"}}]}]