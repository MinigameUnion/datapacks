#> ms_801:game/coin/succeeded
# 付与コイン計算(クリア時)
# @internal

scoreboard players set $Tmp General_801 200
scoreboard players set $Tmp2 General_801 100
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 *= $Tmp General_801
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 /= $Tmp2 General_801
tellraw @a[scores={playing_000=801}] ["",{"translate":"・クリアボーナス： x%1$s%%","with":[{"score":{"name":"$Tmp","objective":"General_801"}}]}]

scoreboard players set $Tmp2 General_801 100
execute if score $Dif General_801 matches 0 run scoreboard players set $Tmp General_801 100
execute if score $Dif General_801 matches 1 run scoreboard players set $Tmp General_801 250
execute if score $Dif General_801 matches 2 run scoreboard players set $Tmp General_801 600
execute if score $Dif General_801 matches 3 run scoreboard players set $Tmp General_801 200
execute if score $Dif General_801 matches 4 run scoreboard players set $Tmp General_801 1000
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 *= $Tmp General_801
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 /= $Tmp2 General_801
tellraw @a[scores={playing_000=801}] ["",{"translate":"・難易度ボーナス： x%1$s%%","with":[{"score":{"name":"$Tmp","objective":"General_801"}}]}]

execute if score $SuperCount General_801 matches 1.. run function ms_801:game/coin/super

execute unless score $UsedFlag General_801 matches 1.. run function ms_801:game/coin/noflag

execute if score $PlayerCount General_801 matches 2.. run function ms_801:game/coin/multi

execute as @a[tag=MVP_801,limit=1] run function ms_801:game/coin/time