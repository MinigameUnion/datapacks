#> ms_801:game/coin/multi
# 付与コイン計算(協力ボーナス)
# @internal

scoreboard players operation $Tmp General_801 = $PlayerCount General_801
scoreboard players remove $Tmp General_801 1
scoreboard players set $Tmp2 General_801 50
scoreboard players operation $Tmp General_801 *= $Tmp2 General_801
scoreboard players add $Tmp General_801 100
scoreboard players set $Tmp2 General_801 500
scoreboard players operation $Tmp General_801 < $Tmp2 General_801
scoreboard players set $Tmp2 General_801 100
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 *= $Tmp General_801
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 /= $Tmp2 General_801
tellraw @a[scores={playing_000=801}] ["",{"translate":"・協力ボーナス： x%1$s%%","with":[{"score":{"name":"$Tmp","objective":"General_801"}}]}]