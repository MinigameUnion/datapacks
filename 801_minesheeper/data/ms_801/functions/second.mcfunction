#> ms_801:second
# 毎秒実行
# @internal

# 常時
## 刈れなくなった羊を復活
execute as @e[type=sheep,tag=801,nbt={Sheared:1b}] run data modify entity @s Sheared set value 0b

# ゲーム中
## すごいハサミ持った時
execute unless score $SuperCount General_801 matches 1.. run clear @a[scores={playing_000=801}] shears{801:1b,801Super:1b}
title @a[scores={playing_000=801},nbt={SelectedItem:{id:"minecraft:shears",tag:{801:1b,801Super:1b}}}] actionbar [{"text":"","color":"white","bold":true},{"translate":"すごいハサミ 残り回数 : %1$s 回","with":[{"score":{"name":"$SuperCount","objective":"General_801"}}]}]