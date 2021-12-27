#成功時通貨計算・付与
scoreboard players set $Tmp General_801 5
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 *= $Tmp General_801
tellraw @a[scores={playing_000=801}] ["",{"translate":"・クリアボーナス： x%1$s00%%","with":[{"score":{"name":"$Tmp","objective":"General_801"}}]}]

scoreboard players set $Tmp2 General_801 100
execute if score $Dif General_801 matches 0 run scoreboard players set $Tmp General_801 50
execute if score $Dif General_801 matches 1 run scoreboard players set $Tmp General_801 100
execute if score $Dif General_801 matches 2 run scoreboard players set $Tmp General_801 200
execute if score $Dif General_801 matches 3 run scoreboard players set $Tmp General_801 400
execute if score $Dif General_801 matches 4 run scoreboard players set $Tmp General_801 10000
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 *= $Tmp General_801
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 /= $Tmp2 General_801
tellraw @a[scores={playing_000=801}] ["",{"translate":"・難易度ボーナス： x%1$s%%","with":[{"score":{"name":"$Tmp","objective":"General_801"}}]}]

scoreboard players set $Tmp General_801 17
scoreboard players operation $Tmp General_801 *= $Mine General_801
scoreboard players add $Tmp General_801 320
scoreboard players operation $Tmp General_801 *= $Mine General_801
scoreboard players add $Tmp General_801 500
scoreboard players set $Tmp2 General_801 135
scoreboard players operation $Tmp General_801 /= $Tmp2 General_801
scoreboard players set $Tmp2 General_801 2
scoreboard players operation $Tmp2 General_801 *= $Tmp General_801
scoreboard players operation $Tmp2 General_801 -= $Time General_801
scoreboard players set $Tmp3 General_801 100
scoreboard players operation $Tmp2 General_801 *= $Tmp3 General_801
scoreboard players operation $Tmp2 General_801 /= $Tmp General_801
execute if score $Tmp2 General_801 matches ..50 run scoreboard players set $Tmp2 General_801 50
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 *= $Tmp2 General_801
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 /= $Tmp3 General_801
tellraw @a[scores={playing_000=801}] ["",{"translate":"・タイムボーナス： x%1$s%%","with":[{"score":{"name":"$Tmp2","objective":"General_801"}}]}]

execute unless score $UsedFlag General_801 matches 1.. run function ms_801:game/coin_noflag