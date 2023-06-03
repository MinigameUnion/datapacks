#> ms_801:game/coin/super
# 付与コイン計算(すごいハサミ残り回数ボーナス)
# @internal

scoreboard players operation $Tmp General_801 = $SuperLimit General_801
scoreboard players set $Tmp2 General_801 5
scoreboard players operation $Tmp General_801 *= $Tmp2 General_801
scoreboard players operation $Tmp General_801 += $SuperCount General_801
scoreboard players set $Tmp2 General_801 100
scoreboard players operation $Tmp General_801 *= $Tmp2 General_801
scoreboard players operation $Tmp General_801 /= $SuperLimit General_801
scoreboard players set $Tmp2 General_801 5
scoreboard players operation $Tmp General_801 /= $Tmp2 General_801

scoreboard players set $Tmp2 General_801 100
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 *= $Tmp General_801
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 /= $Tmp2 General_801
tellraw @a[scores={playing_000=801}] ["",{"translate":"・すごいハサミボーナス： x%1$s%%","with":[{"score":{"name":"$Tmp","objective":"General_801"}}]}]