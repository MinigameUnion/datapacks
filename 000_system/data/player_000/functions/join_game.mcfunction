#> player_000:join_game
# @public
## ゲーム入室時の処理
#ゲーム側でplaying_000を書き換えた後に実行するようにしてください

#プレイヤーの状態の変更
gamemode adventure @s
experience set @s 0 levels
experience set @s 0 points
effect clear @s

#紐づけアイテム君を探査
scoreboard players operation #ID num_000 = @s id_000
execute as @e[type=item,x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data modify entity @s Item.tag.status set value 1b

#持ってるボーナスアイテムが行先のゲームに持ち込み可能か検証
execute if data entity @s Inventory[].tag.bonus.in run function inv_000:bonus/return