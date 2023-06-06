#> ms_801:game/super_text
# すごいハサミ回数/価格表示
# @internal

execute if score $SuperCount General_801 matches 1.. run title @a[scores={playing_000=801},nbt={SelectedItem:{id:"minecraft:shears",tag:{801:1b,801Super:1b}}}] actionbar [{"text":"","color":"white","bold":true},{"translate":"すごいハサミ 無料回数 : 残り %1$s 回","with":[{"score":{"name":"$SuperCount","objective":"General_801"}}]}]
execute unless score $SuperCount General_801 matches 1.. run title @a[scores={playing_000=801},nbt={SelectedItem:{id:"minecraft:shears",tag:{801:1b,801Super:1b}}}] actionbar [{"text":"","color":"white","bold":true},{"translate":"すごいハサミ 価格 : %1$s ミニ","with":[{"score":{"name":"$SuperCost","objective":"General_801"}}]}]