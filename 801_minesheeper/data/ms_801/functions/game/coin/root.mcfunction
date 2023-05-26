#> ms_801:game/coin/root
# コイン付与処理
# @internal

# 基礎ミニ算出(切り上げ)
execute as @a[scores={playing_000=801}] store result score @s add_coin_000 run clear @s white_wool{801:1b}
execute as @a[scores={playing_000=801}] run scoreboard players operation @s General_801 = @s add_coin_000
scoreboard players add @a[scores={playing_000=801}] add_coin_000 9
scoreboard players set $Tmp General_801 10
scoreboard players operation @a[scores={playing_000=801}] add_coin_000 /= $Tmp General_801
tellraw @a[scores={playing_000=801}] ["",{"text":"-----------------------\n"},{"translate":"羊毛：%1$s個 -> %2$sミニ","with":[{"score":{"name":"*","objective":"General_801"}},{"score":{"name":"*","objective":"add_coin_000"}}]}]
# MVP処理
execute as @a[scores={playing_000=801}] run function ms_801:game/coin/mvp
scoreboard players reset @a[scores={playing_000=801}] General_801
execute as @a[scores={playing_000=801},tag=MVP_801,sort=random,limit=1] run function ms_801:game/record/mvp_randomize
# 成功時処理
execute if score $Succeeded General_801 matches 1 run function ms_801:game/coin/succeeded
# 最終獲得
tellraw @a[scores={playing_000=801}] ["",{"translate":"-> 獲得ミニ： %1$sミニ","with":[{"score":{"name":"*","objective":"add_coin_000"}}]},{"text":"\n-----------------------"}]
execute as @a[scores={playing_000=801}] run function player_000:add_coin
kill @e[type=item,nbt={Item:{tag:{801:1b}}}]